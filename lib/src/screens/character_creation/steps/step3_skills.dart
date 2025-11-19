import 'package:flutter/material.dart';
import 'package:myapp/src/data/creatures/player_character/skill.dart';

class Step3Skills extends StatelessWidget {
  const Step3Skills({
    required this.acquiredSkills,
    required this.optionalSkills,
    required this.selectedOptionalSkills,
    required this.optionalSkillPoints,
    required this.onAddOptionalSkill,
    required this.onRemoveOptionalSkill,
    super.key,
    this.isHumanAny = false,
    this.error,
  });

  final List<Skill> acquiredSkills;
  final List<Skill> optionalSkills;
  final Set<Skill> selectedOptionalSkills;
  final int optionalSkillPoints;
  final ValueChanged<Skill> onAddOptionalSkill;
  final ValueChanged<Skill> onRemoveOptionalSkill;
  final bool isHumanAny;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (!isHumanAny) ...[
            Text(
              'Acquired Skills',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            if (acquiredSkills.isEmpty)
              const Text('No skills acquired.')
            else
              ...acquiredSkills.map((skill) => _buildSkillItem(context, skill)),
            const SizedBox(height: 24),
          ],
          Text(
            'Optional Skills',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            'You must choose exactly $optionalSkillPoints skills.',
            style: Theme.of(context).textTheme.labelMedium,
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
          const SizedBox(height: 16),
          if (optionalSkills.isEmpty)
            const Text('No optional skills available.')
          else
            ...optionalSkills.map(
              (skill) => _buildOptionalSkillItem(context, skill),
            ),
        ],
      ),
    );
  }

  Widget _buildSkillItem(BuildContext context, Skill skill) {
    return Card(
      child: ListTile(
        title: Text(skill.name),
        onTap: () => _showSkillDescription(context, skill),
      ),
    );
  }

  Widget _buildOptionalSkillItem(BuildContext context, Skill skill) {
    final isSelected = selectedOptionalSkills.contains(skill);
    final canSelectMore = selectedOptionalSkills.length < optionalSkillPoints;

    return Card(
      child: ListTile(
        title: Text(skill.name),
        onTap: () => _showSkillDescription(context, skill),
        trailing: Checkbox(
          value: isSelected,
          onChanged: canSelectMore || isSelected
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

  Future<void> _showSkillDescription(BuildContext context, Skill skill) async {
    return showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(skill.name),
        content: Text(skill.description),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
