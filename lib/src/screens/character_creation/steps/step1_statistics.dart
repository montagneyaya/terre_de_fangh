import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Step1Statistics extends StatelessWidget {
  const Step1Statistics({
    required this.statistics,
    required this.onStatisticsUpdated,
    super.key,
    this.error,
  });

  final Map<String, int> statistics;
  final ValueChanged<Map<String, int>> onStatisticsUpdated;
  final String? error;

  void _updateStatistic(String stat, int value) {
    final newStats = Map<String, int>.from(statistics);
    newStats[stat] = value.clamp(8, 20);
    onStatisticsUpdated(newStats);
  }

  void _randomizeStatistic(String stat) {
    final newStats = Map<String, int>.from(statistics);
    newStats[stat] = 8 + (DateTime.now().millisecondsSinceEpoch % 13);
    onStatisticsUpdated(newStats);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          if (error != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                error!,
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          _StatisticRow(
            label: 'Courage',
            value: statistics['courage'] ?? 8,
            onChanged: (val) => _updateStatistic('courage', val),
            onRandomize: () => _randomizeStatistic('courage'),
          ),
          _StatisticRow(
            label: 'Intellect',
            value: statistics['intellect'] ?? 8,
            onChanged: (val) => _updateStatistic('intellect', val),
            onRandomize: () => _randomizeStatistic('intellect'),
          ),
          _StatisticRow(
            label: 'Charisma',
            value: statistics['charisma'] ?? 8,
            onChanged: (val) => _updateStatistic('charisma', val),
            onRandomize: () => _randomizeStatistic('charisma'),
          ),
          _StatisticRow(
            label: 'Dexterity',
            value: statistics['dexterity'] ?? 8,
            onChanged: (val) => _updateStatistic('dexterity', val),
            onRandomize: () => _randomizeStatistic('dexterity'),
          ),
          _StatisticRow(
            label: 'Strength',
            value: statistics['strength'] ?? 8,
            onChanged: (val) => _updateStatistic('strength', val),
            onRandomize: () => _randomizeStatistic('strength'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final newStats = <String, int>{};
              for (final stat in statistics.keys) {
                newStats[stat] =
                    8 + (DateTime.now().millisecondsSinceEpoch % 13);
              }
              onStatisticsUpdated(newStats);
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
    final intValue = int.tryParse(value);
    if (intValue != null && intValue != widget.value) {
      widget.onChanged(intValue.clamp(8, 20));
    } else {
      _controller.text = widget.value.toString();
    }
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
                  onSubmitted: _onSubmitted,
                  onTapOutside: (_) => _onSubmitted(_controller.text),
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
