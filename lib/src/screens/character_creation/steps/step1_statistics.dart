import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/src/data/services/dices.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_intent.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_view_model.dart';

/// Represents the different types of statistics that can be modified
enum StatisticType {
  courage,
  intellect,
  charisma,
  dexterity,
  strength,
}

extension StatisticTypeExtension on StatisticType {
  /// Returns the display name for each statistic type
  String get displayName {
    switch (this) {
      case StatisticType.courage:
        return 'Courage';
      case StatisticType.intellect:
        return 'Intellect';
      case StatisticType.charisma:
        return 'Charisma';
      case StatisticType.dexterity:
        return 'Dexterity';
      case StatisticType.strength:
        return 'Strength';
    }
  }
}

/// The first step in character creation for setting character statistics
class Step1Statistics extends StatelessWidget {
  const Step1Statistics({
    required this.viewModel,
    required this.onIntent,
    super.key,
  });

  final CharacterCreationViewModel viewModel;
  final void Function(CharacterCreationIntent) onIntent;

  /// Updates a single statistic value
  void _updateStatistic(StatisticType stat, int value) {
    final newStats = Map<String, int>.from(viewModel.statistics);
    newStats[stat.name] = value;
    onIntent(CharacterCreationIntent.updateStatistics(newStats));
  }

  /// Randomizes a single statistic value
  void _randomizeStatistic(StatisticType stat) {
    final newStats = Map<String, int>.from(viewModel.statistics);
    newStats[stat.name] = Dices().d6() + 7; // 8-13 inclusive
    onIntent(CharacterCreationIntent.updateStatistics(newStats));
  }

  /// Randomizes all statistic values
  void _randomizeAll() {
    final newStats = <String, int>{};
    final dice = Dices();
    for (final stat in StatisticType.values) {
      newStats[stat.name] = dice.d6() + 7; // 8-13 inclusive
    }
    onIntent(CharacterCreationIntent.updateStatistics(newStats));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasInvalidStats = !viewModel.areStatisticsValid;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          if (hasInvalidStats)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'All statistics must be between 8 and 20',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.error,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ...StatisticType.values.map((stat) => _StatisticRow(
                key: ValueKey('stat_row_${stat.name}'),
                label: stat.displayName,
                value: viewModel.statistics[stat.name] ?? 8,
                onChanged: (val) => _updateStatistic(stat, val),
                onRandomize: () => _randomizeStatistic(stat),
              )),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _randomizeAll,
            child: const Text('Randomize All'),
          ),
        ],
      ),
    );
  }
}

/// A single row widget for displaying and editing a statistic value
class _StatisticRow extends StatefulWidget {
  const _StatisticRow({
    required this.label, required this.value, required this.onChanged, required this.onRandomize, super.key,
  });

  final String label;
  final int value;
  final ValueChanged<int> onChanged;
  final VoidCallback onRandomize;

  @override
  State<_StatisticRow> createState() => _StatisticRowState();
}

class _StatisticRowState extends State<_StatisticRow> {
  late final TextEditingController _controller;
  final _debouncer = _Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value.toString());
  }

  @override
  void didUpdateWidget(_StatisticRow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value &&
        widget.value.toString() != _controller.text) {
      _controller.text = widget.value.toString();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _debouncer.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    final intValue = int.tryParse(value) ?? 0;
    _debouncer.run(() => widget.onChanged(intValue));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isInvalid = widget.value < 8 || widget.value > 20;
    final textStyle = theme.textTheme.titleMedium?.copyWith(
      color: isInvalid ? theme.colorScheme.error : null,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.label, style: theme.textTheme.titleMedium),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () => widget.onChanged((widget.value - 1).clamp(8, 20)),
              ),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style: textStyle,
                  onChanged: _onChanged,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    error: isInvalid ? const SizedBox.shrink() : null,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => widget.onChanged((widget.value + 1).clamp(8, 20)),
              ),
              IconButton(
                icon: const Icon(Icons.casino),
                onPressed: widget.onRandomize,
                tooltip: 'Randomize',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// A utility class to debounce rapid-fire events like text input
class _Debouncer {
  _Debouncer({required this.milliseconds});

  final int milliseconds;
  Timer? _timer;

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
