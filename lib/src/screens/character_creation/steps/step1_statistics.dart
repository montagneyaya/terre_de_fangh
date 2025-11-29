import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/src/data/services/dices.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_intent.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_view_model.dart';

class Step1Statistics extends StatelessWidget {
  const Step1Statistics({
    required this.viewModel,
    required this.onIntent,
    super.key,
  });

  final CharacterCreationViewModel viewModel;
  final void Function(CharacterCreationIntent) onIntent;

  void _updateStatistic(String stat, int value) {
    final newStats = Map<String, int>.from(viewModel.statistics);
    newStats[stat] = value;
    onIntent(CharacterCreationIntent.updateStatistics(newStats));
  }

  void _randomizeStatistic(String stat) {
    final newStats = Map<String, int>.from(viewModel.statistics);
    newStats[stat] = Dices().d6() + 7; // Random value between 8-13 (inclusive)
    onIntent(CharacterCreationIntent.updateStatistics(newStats));
  }

  bool _isStatValid(int? value) {
    return value != null && value >= 8 && value <= 20;
  }

  bool get areStatisticsValid {
    return viewModel.statistics.values.every(
      (value) => value >= 8 && value <= 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    final hasInvalidStats = viewModel.statistics.values.any(
      (v) => !_isStatValid(v),
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          if (hasInvalidStats)
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'All statistics must be between 8 and 20',
                style: TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          _StatisticRow(
            label: 'Courage',
            value: viewModel.statistics['courage'] ?? 8,
            onChanged: (val) => _updateStatistic('courage', val),
            onRandomize: () => _randomizeStatistic('courage'),
          ),
          _StatisticRow(
            label: 'Intellect',
            value: viewModel.statistics['intellect'] ?? 8,
            onChanged: (val) => _updateStatistic('intellect', val),
            onRandomize: () => _randomizeStatistic('intellect'),
          ),
          _StatisticRow(
            label: 'Charisma',
            value: viewModel.statistics['charisma'] ?? 8,
            onChanged: (val) => _updateStatistic('charisma', val),
            onRandomize: () => _randomizeStatistic('charisma'),
          ),
          _StatisticRow(
            label: 'Dexterity',
            value: viewModel.statistics['dexterity'] ?? 8,
            onChanged: (val) => _updateStatistic('dexterity', val),
            onRandomize: () => _randomizeStatistic('dexterity'),
          ),
          _StatisticRow(
            label: 'Strength',
            value: viewModel.statistics['strength'] ?? 8,
            onChanged: (val) => _updateStatistic('strength', val),
            onRandomize: () => _randomizeStatistic('strength'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final newStats = <String, int>{};
              final dice = Dices();
              for (final stat in viewModel.statistics.keys) {
                newStats[stat] =
                    dice.d6() + 7; // Random value between 8-13 (inclusive)
              }
              onIntent(CharacterCreationIntent.updateStatistics(newStats));
            },
            child: const Text('Randomize All'),
          ),
        ],
      ),
    );
  }
}

class _StatisticRow extends StatefulWidget {
  const _StatisticRow({
    required this.label,
    required this.value,
    required this.onChanged,
    required this.onRandomize,
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
    super.dispose();
  }

  void _onSubmitted(String value) {
    final intValue = int.tryParse(value) ?? 0;
    widget.onChanged(intValue);
  }

  @override
  Widget build(BuildContext context) {
    final isInvalid = widget.value < 8 || widget.value > 20;
    final textStyle = Theme.of(context).textTheme.titleLarge?.copyWith(
      color: isInvalid ? Colors.red : null,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.label, style: Theme.of(context).textTheme.titleMedium),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () =>
                    widget.onChanged((widget.value - 1).clamp(8, 20)),
              ),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style: textStyle,
                  onChanged: (value) {
                    // Update on every keystroke
                    final intValue = int.tryParse(value) ?? 0;
                    widget.onChanged(intValue);
                  },
                  onSubmitted: _onSubmitted,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () =>
                    widget.onChanged((widget.value + 1).clamp(8, 20)),
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
