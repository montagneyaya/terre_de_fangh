import 'package:flutter/material.dart';
import 'package:myapp/src/data/creatures/creatures.dart';
import 'package:myapp/src/data/creatures/player_character/job.dart';
import 'package:myapp/src/data/creatures/player_character/people.dart';
import 'package:myapp/src/data/creatures/player_character/player_character.dart';
import 'package:myapp/src/data/creatures/player_character/specialization.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_intent.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_view_model.dart';

class Step5Finalizing extends StatefulWidget {
  const Step5Finalizing({
    required this.viewModel,
    required this.onIntent,
    super.key,
  });
  final CharacterCreationViewModel viewModel;
  final void Function(CharacterCreationIntent intent) onIntent;

  @override
  State<Step5Finalizing> createState() => _Step5FinalizingState();
}

class _Step5FinalizingState extends State<Step5Finalizing> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _genderController = TextEditingController();
  late int _fatePoints;
  late int _goldCoins;
  late int _silverCoins;

  @override
  void initState() {
    super.initState();
    // Generate random values
    final random = DateTime.now().millisecondsSinceEpoch;
    _fatePoints = random % 4; // 0 to 3
    _goldCoins = (random % 20) + 1; // 1 to 20
    _silverCoins = random % 100; // 0 to 99
  }

  @override
  void dispose() {
    _nameController.dispose();
    _genderController.dispose();
    super.dispose();
  }

  void _onSave() {
    if (_formKey.currentState?.validate() ?? false) {
      final character = PlayerCharacter(
        creature: Creatures(
          name: _nameController.text,
          people: widget.viewModel.selectedPeople ?? People.human,
          healthPoints: 0,
          astralPoints: 0,
          experience: 0,
          attack: widget.viewModel.statistics['attack'] ?? 0,
          throwAttack: 0,
          parry: widget.viewModel.statistics['parry'] ?? 0,
          evade: 0,
          spellResistance: 0,
          courage: widget.viewModel.statistics['courage'] ?? 0,
          naturalPR: 0,
          magicPR: 0,
          weapons: [],
          armors: [],
          actualHealthPoints: 0,
          actualAstralPoints: 0,
        ),
        gender: _genderController.text,
        job: widget.viewModel.selectedJob ?? Job.none,
        specialization: widget.viewModel.selectedSpecialization ?? Specialization.none,
        fatePoints: _fatePoints,
        level: 1,
        currentLoad: 0,
        maxLoad: 0,
        intellect: widget.viewModel.statistics['intellect'] ?? 0,
        charisma: widget.viewModel.statistics['charisma'] ?? 0,
        dexterity: widget.viewModel.statistics['dexterity'] ?? 0,
        strength: widget.viewModel.statistics['strength'] ?? 0,
        skills: widget.viewModel.skills.entries.map((e) => e.key).toList(),
      );

      widget.onIntent(
        CharacterCreationIntent(
          CharacterCreationAction.finalizeCharacter,
          {'character': character},
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Character Name
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Character Name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name for your character';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // Gender
            TextFormField(
              controller: _genderController,
              decoration: const InputDecoration(
                labelText: 'Gender',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a gender';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),

            // Fate Points
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Fate Points:',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '$_fatePoints',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Money
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Starting Money:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Gold Coins:'),
                        Text('$_goldCoins'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Silver Coins:'),
                        Text('$_silverCoins'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => widget.onIntent(
                    const CharacterCreationIntent(
                      CharacterCreationAction.goToPreviousStep,
                    ),
                  ),
                  child: const Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: _onSave,
                  child: const Text('Save Character'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
