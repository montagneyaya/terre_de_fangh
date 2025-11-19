import 'package:flutter/material.dart';
import 'package:myapp/src/data/creatures/player_character/job.dart';
import 'package:myapp/src/data/creatures/player_character/people.dart';
import 'package:myapp/src/data/creatures/player_character/skill.dart';

// Enums for modifier types
enum DealerSource { attack, parry }

enum DealerTarget { intellect, charisma }

enum EngineerSource { attack, parry }

enum EngineerTarget { intellect, dexterity }

class Step4Modifiers extends StatefulWidget {
  const Step4Modifiers({
    required this.people,
    required this.job,
    required this.dexterity,
    required this.rangerSourceAttribute,
    required this.rangerTargetAttribute,
    required this.hasActiveRangerExchange,
    required this.isRangerExchangeComplete,
    required this.onUpdateCharacter,
    required this.onResetCharacterStats,
    required this.onSelectRangerSourceAttribute,
    required this.onSelectRangerTargetAttribute,
    required this.onResetRangerModifier,
    super.key,
  });

  final People people;
  final Job job;
  final int dexterity;
  final String? rangerSourceAttribute;
  final String? rangerTargetAttribute;
  final bool hasActiveRangerExchange;
  final bool isRangerExchangeComplete;
  final ValueChanged<Map<String, dynamic>> onUpdateCharacter;
  final VoidCallback onResetCharacterStats;
  final ValueChanged<String> onSelectRangerSourceAttribute;
  final ValueChanged<String> onSelectRangerTargetAttribute;
  final VoidCallback onResetRangerModifier;

  @override
  State<Step4Modifiers> createState() => _Step4ModifiersState();
}

class _Step4ModifiersState extends State<Step4Modifiers> {
  // Ogre modifiers
  int _ogreAttackModifier = 0;
  int _ogreParryModifier = 0;

  // Fighter modifiers
  int _fighterModifier = 0;

  // Dealer modifiers
  DealerSource? _dealerSource;
  DealerTarget? _dealerTarget;

  // Engineer modifiers
  EngineerSource? _engineerSource;
  EngineerTarget? _engineerTarget;

  @override
  void initState() {
    super.initState();
    _applyInitialModifiers();
  }

  void _applyInitialModifiers() {
    if (widget.dexterity < 9) {
      widget.onUpdateCharacter({'parry': -1});
    }
    if (widget.dexterity > 12 && widget.job != Job.ninja) {
      widget.onUpdateCharacter({'parry': 1});
    }
  }

  void _resetModifiers() {
    // Reset local state
    _ogreAttackModifier = 0;
    _ogreParryModifier = 0;
    _fighterModifier = 0;
    _dealerSource = null;
    _dealerTarget = null;
    _engineerSource = null;
    _engineerTarget = null;

    // Reset character stats
    widget.onResetCharacterStats();
    widget.onResetRangerModifier();
    _applyInitialModifiers();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.people == People.ogre) _buildOgreModifier(),
          if (widget.job == Job.fighter) _buildFighterModifier(),
          if (widget.job == Job.ranger) _buildRangerModifier(),
          if (widget.job == Job.dealer) _buildDealerModifier(),
          if (widget.job == Job.engineer) _buildEngineerModifier(),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _resetModifiers,
            child: const Text('Reset Modifiers'),
          ),
        ],
      ),
    );
  }

  // ... (Other builder methods will be similar but use widget.callback instead of _bloc.add)
  // Example for _buildOgreModifier:
  Widget _buildOgreModifier() {
    final totalOgreModifier =
        _ogreAttackModifier.abs() + _ogreParryModifier.abs();
    return _buildModifierCard(
      title: 'Ogre Modifier',
      child: Column(
        children: [
          const Text(
            'Subtract 1 to 3 points from Attack and/or Parry to gain 1 to 3 points in Damage Bonus. This will add the "Super Powerful" skill.',
          ),
          const SizedBox(height: 10),
          _buildSlider(
            label: 'Attack Modifier',
            value: _ogreAttackModifier.toDouble(),
            min: -3,
            max: 0,
            divisions: 3,
            onChanged: totalOgreModifier < 3 || _ogreAttackModifier != 0
                ? (value) {
                    setState(() {
                      final attackChange = value.toInt() - _ogreAttackModifier;
                      _ogreAttackModifier = value.toInt();
                      widget.onUpdateCharacter({
                        'attack': attackChange,
                        'damageBonus': -attackChange,
                        'skills': [Skill.superPowerful],
                      });
                    });
                  }
                : null,
          ),
          _buildSlider(
            label: 'Parry Modifier',
            value: _ogreParryModifier.toDouble(),
            min: -3,
            max: 0,
            divisions: 3,
            onChanged: totalOgreModifier < 3 || _ogreParryModifier != 0
                ? (value) {
                    setState(() {
                      final parryChange = value.toInt() - _ogreParryModifier;
                      _ogreParryModifier = value.toInt();
                      widget.onUpdateCharacter({
                        'parry': parryChange,
                        'damageBonus': -parryChange,
                        'skills': [Skill.superPowerful],
                      });
                    });
                  }
                : null,
          ),
        ],
      ),
    );
  }

  Widget _buildFighterModifier() {
    return _buildModifierCard(
      title: 'Fighter Modifier',
      child: Column(
        children: [
          const Text('Exchange 1 point between Attack and Parry.'),
          const SizedBox(height: 10),
          _buildSlider(
            label: 'Attack/Parry Exchange',
            value: _fighterModifier.toDouble(),
            min: -1,
            max: 1,
            divisions: 2,
            onChanged: (value) {
              setState(() {
                final fighterChange = value.toInt() - _fighterModifier;
                _fighterModifier = value.toInt();
                widget.onUpdateCharacter({
                  'attack': fighterChange,
                  'parry': -fighterChange,
                });
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildRangerModifier() {
    return _buildModifierCard(
      title: 'Ranger Modifier',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.hasActiveRangerExchange
                ? 'Select attribute to INCREASE by 1:'
                : 'Select attribute to DECREASE by 1:',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          if (!widget.hasActiveRangerExchange) ...[
            _buildAttributeButton('Courage', 'courage'),
            _buildAttributeButton('Intellect', 'intellect'),
            _buildAttributeButton('Charisma', 'charisma'),
            _buildAttributeButton('Dexterity', 'dexterity'),
            _buildAttributeButton('Strength', 'strength'),
          ] else ...[
            if (widget.rangerSourceAttribute != null)
              _buildAttributeButton(
                '${widget.rangerSourceAttribute!} → ${widget.rangerTargetAttribute ?? '...'}',
                widget.rangerTargetAttribute ?? '',
                isSelected: true,
              ),
          ],
          if (widget.hasActiveRangerExchange)
            ElevatedButton(
              onPressed: widget.onResetRangerModifier,
              child: const Text('Reset Selection'),
            ),
          const SizedBox(height: 10),
          const Text(
            'As a ranger, you can exchange 1 point between any two characteristics. '
            'Select the characteristic to decrease, then select the characteristic to increase.',
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }

  Widget _buildDealerModifier() {
    return _buildModifierCard(
      title: 'Dealer Modifier',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Subtract 1 point from Attack or Parry and add 1 point to Intellect or Charisma.',
          ),
          const SizedBox(height: 16),
          const Text(
            'Subtract from:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          RadioGroup<DealerSource>(
            groupValue: _dealerSource,
            onChanged: (value) => _updateDealerModifier(value, _dealerTarget),
            child: Column(
              children: DealerSource.values.map((source) {
                return RadioListTile<DealerSource>(
                  title: Text(_enumToTitle(source.toString())),
                  value: source,
                  // Removed onChanged from here
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 8),
          const Text('Add to:', style: TextStyle(fontWeight: FontWeight.bold)),
          RadioGroup<DealerTarget>(
            groupValue: _dealerTarget,
            onChanged: (value) => _updateDealerModifier(_dealerSource, value),
            child: Column(
              children: DealerTarget.values.map((target) {
                return RadioListTile<DealerTarget>(
                  title: Text(_enumToTitle(target.toString())),
                  value: target,
                  // Removed onChanged from here
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEngineerModifier() {
    return _buildModifierCard(
      title: 'Engineer Modifier',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Subtract 1 point from Attack or Parry and add 1 point to Intellect or Dexterity.',
          ),
          const SizedBox(height: 16),
          const Text(
            'Subtract from:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          RadioGroup<EngineerSource>(
            groupValue: _engineerSource,
            onChanged: (value) =>
                _updateEngineerModifier(value, _engineerTarget),
            child: Column(
              children: EngineerSource.values.map((source) {
                return RadioListTile<EngineerSource>(
                  title: Text(_enumToTitle(source.toString())),
                  value: source,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 8),
          const Text('Add to:', style: TextStyle(fontWeight: FontWeight.bold)),
          RadioGroup<EngineerTarget>(
            groupValue: _engineerTarget,
            onChanged: (value) =>
                _updateEngineerModifier(_engineerSource, value),
            child: Column(
              children: EngineerTarget.values.map((target) {
                return RadioListTile<EngineerTarget>(
                  title: Text(_enumToTitle(target.toString())),
                  value: target,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAttributeButton(
    String label,
    String attribute, {
    bool isSelected = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ElevatedButton(
        onPressed: () {
          if (!widget.hasActiveRangerExchange) {
            widget.onSelectRangerSourceAttribute(attribute);
          } else if (widget.rangerSourceAttribute != attribute) {
            widget.onSelectRangerTargetAttribute(attribute);
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected
              ? Theme.of(context).colorScheme.primaryContainer
              : null,
        ),
        child: Text(label),
      ),
    );
  }

  String _enumToTitle(String enumString) {
    return enumString.split('.').last[0].toUpperCase() +
        enumString.split('.').last.substring(1);
  }

  void _updateDealerModifier(DealerSource? source, DealerTarget? target) {
    setState(() {
      final updates = <String, int>{};

      // Reset previous source
      if (_dealerSource == DealerSource.attack) updates['attack'] = 1;
      if (_dealerSource == DealerSource.parry) updates['parry'] = 1;

      // Apply new source
      if (source == DealerSource.attack) updates['attack'] = -1;
      if (source == DealerSource.parry) updates['parry'] = -1;

      // Reset previous target
      if (_dealerTarget == DealerTarget.intellect) updates['intellect'] = -1;
      if (_dealerTarget == DealerTarget.charisma) updates['charisma'] = -1;

      // Apply new target
      if (target == DealerTarget.intellect) updates['intellect'] = 1;
      if (target == DealerTarget.charisma) updates['charisma'] = 1;

      _dealerSource = source;
      _dealerTarget = target;

      if (updates.isNotEmpty) {
        widget.onUpdateCharacter(updates);
      }
    });
  }

  void _updateEngineerModifier(EngineerSource? source, EngineerTarget? target) {
    setState(() {
      final updates = <String, int>{};

      // Reset previous source
      if (_engineerSource == EngineerSource.attack) updates['attack'] = 1;
      if (_engineerSource == EngineerSource.parry) updates['parry'] = 1;

      // Apply new source
      if (source == EngineerSource.attack) updates['attack'] = -1;
      if (source == EngineerSource.parry) updates['parry'] = -1;

      // Reset previous target
      if (_engineerTarget == EngineerTarget.intellect) {
        updates['intellect'] = -1;
      }
      if (_engineerTarget == EngineerTarget.dexterity) {
        updates['dexterity'] = -1;
      }

      // Apply new target
      if (target == EngineerTarget.intellect) updates['intellect'] = 1;
      if (target == EngineerTarget.dexterity) updates['dexterity'] = 1;

      // Handle dexterity-based parry bonus
      if (updates.containsKey('dexterity')) {
        final newDexterity = (updates['dexterity'] ?? 0) + widget.dexterity;
        if (newDexterity > 12) {
          updates['parry'] = (updates['parry'] ?? 0) + 1;
        } else if (widget.dexterity > 12) {
          updates['parry'] = (updates['parry'] ?? 0) - 1;
        }
      }

      _engineerSource = source;
      _engineerTarget = target;

      if (updates.isNotEmpty) {
        widget.onUpdateCharacter(updates);
      }
    });
  }

  Widget _buildModifierCard({required String title, required Widget child}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildSlider({
    required String label,
    required double value,
    required double min,
    required double max,
    required int divisions,
    required ValueChanged<double>? onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: ${value.toInt()}'),
        Slider(
          value: value,
          min: min,
          max: max,
          divisions: divisions,
          onChanged: onChanged,
          label: value.toInt().toString(),
        ),
      ],
    );
  }
}
