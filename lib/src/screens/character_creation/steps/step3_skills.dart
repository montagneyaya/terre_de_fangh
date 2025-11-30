import 'package:flutter/material.dart';
import 'package:myapp/src/data/creatures/player_character/skill.dart';

class Step3Skills extends StatelessWidget {
  const Step3Skills({
    required this.birthSkills,
    required this.optionalSkills,
    required this.selectedOptionalSkills,
    required this.optionalSkillPoints,
    required this.onAddOptionalSkill,
    required this.onRemoveOptionalSkill,
    super.key,
    this.error,
  });

  final List<Skill> birthSkills;
  final List<Skill> optionalSkills;
  final Set<Skill> selectedOptionalSkills;
  final int optionalSkillPoints;
  final ValueChanged<Skill> onAddOptionalSkill;
  final ValueChanged<Skill> onRemoveOptionalSkill;
  final String? error;

  bool get hasBirthSkills => birthSkills.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (hasBirthSkills) ...[
            // Birth/Inherited Skills Section
            Text(
              'Birth & Inherited Skills',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'These skills are automatically acquired based on your people and job selection.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            ...birthSkills.map(
              (skill) => _buildSkillItem(context, skill, true),
            ),
            const SizedBox(height: 24),
          ],

          // Optional Skills Section
          Text(
            'Optional Skills',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Choose $optionalSkillPoints optional skills:',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          if (error != null)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                error!,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ),
          const SizedBox(height: 8),
          if (optionalSkills.isEmpty)
            const Text('No optional skills available.')
          else
            ...optionalSkills.map(
              (skill) => _buildSkillItem(
                context,
                skill,
                false,
                isSelected: selectedOptionalSkills.contains(skill),
                canSelect: selectedOptionalSkills.length < optionalSkillPoints,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSkillItem(
    BuildContext context,
    Skill skill,
    bool isInherited, {
    bool isSelected = false,
    bool canSelect = true,
  }) {
    return Card(
      child: ListTile(
        title: Text(skill.name),
        onTap: () => _showSkillDescription(context, skill),
        trailing: isInherited
            ? const Icon(Icons.check_circle, color: Colors.green)
            : Checkbox(
                value: isSelected,
                onChanged: canSelect || isSelected
                    ? (bool? value) {
                        if (value ?? false) {
                          onAddOptionalSkill(skill);
                        } else {
                          onRemoveOptionalSkill(skill);
                        }
                      }
                    : null,
              ),
      ),
    );
  }

  Future<void> _showSkillDescription(BuildContext context, Skill skill) {
    return showDialog<void>(
      // Add explicit type parameter <void>
      context: context,
      builder: (context) => AlertDialog(
        title: Text(skill.name),
        content: SingleChildScrollView(
          child: Text(skill.description),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
