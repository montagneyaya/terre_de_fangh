import 'package:flutter/material.dart';

class SoloQuestsTab extends StatelessWidget {
  const SoloQuestsTab({
    required this.isLoading,
    required this.soloQuests,
    required this.onCreateSoloQuest,
    required this.onSoloQuestSelected,
    super.key,
  });

  final bool isLoading;
  final List<Map<String, dynamic>> soloQuests;
  final VoidCallback onCreateSoloQuest;
  final void Function(int index) onSoloQuestSelected;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (soloQuests.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No solo quests found'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onCreateSoloQuest,
              child: const Text('Create Solo Quest'),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: soloQuests.length,
      itemBuilder: (context, index) {
        final quest = soloQuests[index];
        final name = quest['name']?.toString() ?? 'Unnamed Solo Quest';
        final description = quest['description']?.toString() ?? '';
        final progress = quest['progress']?.toString() ?? '0%';
        
        return ListTile(
          title: Text(name),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(description),
              const SizedBox(height: 4),
              LinearProgressIndicator(
                value: (double.tryParse(progress.replaceAll('%', '')) ?? 0) / 100,
                minHeight: 4,
              ),
              Text('Progress: $progress'),
            ],
          ),
          onTap: () => onSoloQuestSelected(index),
        );
      },
    );
  }
}
