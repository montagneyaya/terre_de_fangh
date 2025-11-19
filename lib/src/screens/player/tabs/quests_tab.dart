import 'package:flutter/material.dart';

class QuestsTab extends StatelessWidget {
  const QuestsTab({
    required this.isLoading,
    required this.quests,
    required this.onCreateQuest,
    required this.onQuestSelected,
    super.key,
  });
  final bool isLoading;
  final List<Map<String, dynamic>> quests; // Replace with your Quest model
  final VoidCallback onCreateQuest;
  final void Function(int index) onQuestSelected;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (quests.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No quests found'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onCreateQuest,
              child: const Text('Create Quest'),
            ),
          ],
        ),
      );
    }
    return ListView.builder(
      itemCount: quests.length,
      itemBuilder: (context, index) {
        final quest = quests[index];
        final name = quest['name']?.toString() ?? 'Unnamed Quest';
        final description = quest['description']?.toString() ?? '';
        
        return ListTile(
          title: Text(name),
          subtitle: Text(description),
          onTap: () => onQuestSelected(index),
        );
      },
    );
  }
}
