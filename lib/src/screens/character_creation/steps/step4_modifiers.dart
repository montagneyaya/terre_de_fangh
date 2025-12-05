import 'package:flutter/material.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_intent.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_view_model.dart';

enum AttributeType { attack, parry }

class Step4Modifiers extends StatelessWidget {
  const Step4Modifiers({
    required this.viewModel,
    required this.onIntent,
    super.key,
  });

  final CharacterCreationViewModel viewModel;
  final ValueChanged<CharacterCreationIntent> onIntent;

  bool get _shouldShowDexterityModifiers {
    final dexterity = viewModel.statistics['dexterity'] ?? 0;
    final isNinja = viewModel.selectedJob?.name == 'Ninja';
    return dexterity < 9 || (dexterity > 12 && !isNinja);
  }

  @override
  Widget build(BuildContext context) {
    // Apply dexterity modifier when the step is first shown
    if (_shouldShowDexterityModifiers) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onIntent(CharacterCreationIntent.applyDexterityModifier(
          attribute: viewModel.dexterityModifierAttribute,
        ));
      });
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ogre Modifiers
          if (viewModel.isOgre) _buildOgreModifiers(),

          // Fighter Modifiers
          if (viewModel.isFighter) _buildFighterModifiers(),

          // Ranger Modifiers
          if (viewModel.isRanger) _buildRangerModifiers(),

          // Dealer Modifiers
          if (viewModel.isDealer) _buildDealerModifiers(),

          // Engineer Modifiers
          if (viewModel.isEngineer) _buildEngineerModifiers(),

          // Dexterity Modifiers
          if (_shouldShowDexterityModifiers) _buildDexterityModifiers(),

          // Reset Button
          Center(
            child: ElevatedButton(
              onPressed: () =>
                  onIntent(CharacterCreationIntent.resetModifiers()),
              child: const Text('Reset All Modifiers'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOgreModifiers() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ogre Modifiers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Sacrifice attack and/or parry to gain damage bonus:'),
            const SizedBox(height: 8),

            // Base Stats
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  const Text('Base Stats: '),
                  const SizedBox(width: 16),
                  Text('Attack: ${viewModel.baseAttack}'),
                  const SizedBox(width: 16),
                  Text('Parry: ${viewModel.baseParry}'),
                ],
              ),
            ),
            const Divider(),

            // Attack Modifier
            Row(
              children: [
                const Text('Attack:'),
                const SizedBox(width: 8),
                Text(
                  '${viewModel.baseAttack} ${viewModel.ogreAttackModifier >= 0 ? '+' : ''}${viewModel.ogreAttackModifier} = ${viewModel.modifiedAttack}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: viewModel.ogreAttackModifier > -3
                      ? () => onIntent(
                          CharacterCreationIntent.updateOgreModifiers(
                            attackModifier: viewModel.ogreAttackModifier - 1,
                            parryModifier: viewModel.ogreParryModifier,
                          ),
                        )
                      : null,
                ),
                Container(
                  width: 24,
                  alignment: Alignment.center,
                  child: Text('${viewModel.ogreAttackModifier}'),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: viewModel.ogreAttackModifier < 0
                      ? () => onIntent(
                          CharacterCreationIntent.updateOgreModifiers(
                            attackModifier: viewModel.ogreAttackModifier + 1,
                            parryModifier: viewModel.ogreParryModifier,
                          ),
                        )
                      : null,
                ),
              ],
            ),

            // Parry Modifier
            Row(
              children: [
                const Text('Parry:'),
                const SizedBox(width: 8),
                Text(
                  '${viewModel.baseParry} ${viewModel.ogreParryModifier >= 0 ? '+' : ''}${viewModel.ogreParryModifier} = ${viewModel.modifiedParry}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: viewModel.ogreParryModifier > -3
                      ? () => onIntent(
                          CharacterCreationIntent.updateOgreModifiers(
                            attackModifier: viewModel.ogreAttackModifier,
                            parryModifier: viewModel.ogreParryModifier - 1,
                          ),
                        )
                      : null,
                ),
                Container(
                  width: 24,
                  alignment: Alignment.center,
                  child: Text('${viewModel.ogreParryModifier}'),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: viewModel.ogreParryModifier < 0
                      ? () => onIntent(
                          CharacterCreationIntent.updateOgreModifiers(
                            attackModifier: viewModel.ogreAttackModifier,
                            parryModifier: viewModel.ogreParryModifier + 1,
                          ),
                        )
                      : null,
                ),
              ],
            ),

            // Damage Bonus (capped at +3)
            Text(
              'Damage Bonus: ${(viewModel.ogreAttackModifier + viewModel.ogreParryModifier).abs().clamp(0, 3)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFighterModifiers() {
    final baseAttack = viewModel.baseAttack;
    final baseParry = viewModel.baseParry;
    final fighterAttackModifier = viewModel.fighterAttackModifier;
    final fighterParryModifier = viewModel.fighterParryModifier;
    final isOgre = viewModel.isOgre;
    final ogreAttackModifier = isOgre ? viewModel.ogreAttackModifier : 0;
    final ogreParryModifier = isOgre ? viewModel.ogreParryModifier : 0;

    final totalAttack = baseAttack + fighterAttackModifier + ogreAttackModifier;
    final totalParry = baseParry + fighterParryModifier + ogreParryModifier;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Fighter Modifiers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Exchange 1 point between attack and parry:'),
            const SizedBox(height: 16),

            // Attack Row
            Row(
              children: [
                const Text('Attack:'),
                const SizedBox(width: 8),
                Text(
                  '$baseAttack ${fighterAttackModifier >= 0 ? '+' : ''}$fighterAttackModifier${isOgre ? ' (${ogreAttackModifier >= 0 ? '+' : ''}$ogreAttackModifier)' : ''} = $totalAttack',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: fighterAttackModifier > -1
                      ? () => onIntent(
                          CharacterCreationIntent.updateFighterModifiers(
                            attackChange: -1,
                            parryChange: 1,
                          ),
                        )
                      : null,
                ),
                Container(
                  width: 24,
                  alignment: Alignment.center,
                  child: Text('$fighterAttackModifier'),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: fighterAttackModifier < 1
                      ? () => onIntent(
                          CharacterCreationIntent.updateFighterModifiers(
                            attackChange: 1,
                            parryChange: -1,
                          ),
                        )
                      : null,
                ),
              ],
            ),

            // Parry Row
            Row(
              children: [
                const Text('Parry:'),
                const SizedBox(width: 8),
                Text(
                  '$baseParry ${fighterParryModifier >= 0 ? '+' : ''}$fighterParryModifier${isOgre ? ' (${ogreParryModifier >= 0 ? '+' : ''}$ogreParryModifier)' : ''} = $totalParry',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: fighterParryModifier > -1
                      ? () => onIntent(
                          CharacterCreationIntent.updateFighterModifiers(
                            attackChange: 1,
                            parryChange: -1,
                          ),
                        )
                      : null,
                ),
                Container(
                  width: 24,
                  alignment: Alignment.center,
                  child: Text('$fighterParryModifier'),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: fighterParryModifier < 1
                      ? () => onIntent(
                          CharacterCreationIntent.updateFighterModifiers(
                            attackChange: -1,
                            parryChange: 1,
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRangerModifiers() {
    final currentStats = viewModel.statistics;
    final transferBegin =
        (viewModel.modifiers['rangerTransferBegin'] as bool?) ?? false;
    final transferFinish =
        (viewModel.modifiers['rangerTransferFinish'] as bool?) ?? false;

    final stats = ['courage', 'intellect', 'charisma', 'dexterity', 'strength'];

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ranger Modifiers',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Transfer status
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: transferFinish
                    ? Colors.grey.shade800
                    : transferBegin
                    ? Colors.blue.shade800
                    : Colors.orange.shade800,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: transferFinish
                      ? Colors.grey.shade300
                      : transferBegin
                      ? Colors.blue.shade200
                      : Colors.orange.shade200,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    transferFinish
                        ? Icons.check_circle_outline
                        : transferBegin
                        ? Icons.info_outline
                        : Icons.lightbulb_outline,
                    size: 16,
                    color: transferFinish
                        ? Colors.green.shade700
                        : transferBegin
                        ? Colors.blue.shade700
                        : Colors.orange.shade700,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      transferFinish
                          ? 'Transfer completed!'
                          : transferBegin
                          ? 'Now select a statistic to add the point to'
                          : 'Click - on any statistic to start transfer',
                      style: TextStyle(
                        color: transferFinish
                            ? Colors.grey.shade100
                            : transferBegin
                            ? Colors.blue.shade50
                            : Colors.orange.shade50,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Statistics with + and - buttons
            ...stats.map((stat) {
              final value = currentStats[stat] ?? 0;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        '${stat[0].toUpperCase() + stat.substring(1)}:',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 16),

                    // Minus button
                    IconButton(
                      icon: const Icon(Icons.remove_circle_outline, size: 24),
                      color: !transferBegin && !transferFinish ? Colors.red : Colors.grey.shade400,
                      onPressed:
                          (!transferBegin && !transferFinish)
                          ? () {
                              final updatedStats = Map<String, int>.from(
                                currentStats,
                              );
                              updatedStats[stat] = value - 1;
                              onIntent(
                                CharacterCreationIntent.updateRangerModifiers(
                                  statistics: updatedStats,
                                  transferBegin: true,
                                  originalStats: currentStats,
                                ),
                              );
                            }
                          : null,
                    ),

                    // Stat value
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Text(
                        value.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Plus button
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline, size: 24),
                      color: transferBegin && !transferFinish ? Colors.green : Colors.grey.shade400,
                      onPressed:
                          (transferBegin && !transferFinish)
                          ? () {
                              final updatedStats = Map<String, int>.from(
                                currentStats,
                              );
                              updatedStats[stat] = value + 1;
                              onIntent(
                                CharacterCreationIntent.updateRangerModifiers(
                                  statistics: updatedStats,
                                  transferFinish: true,
                                ),
                              );
                            }
                          : null,
                    ),
                  ],
                ),
              );
            }),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton.icon(
                onPressed: () =>
                    onIntent(CharacterCreationIntent.resetRangerModifier()),
                icon: const Icon(Icons.refresh, size: 18),
                label: const Text('Reset Ranger Modifiers'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDealerModifiers() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dealer Modifiers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Transfer points from combat to social attributes:'),
            const SizedBox(height: 8),

            // Source Attribute (Combat)
            DropdownButtonFormField<String>(
              initialValue: viewModel.dealerSource,
              decoration: const InputDecoration(
                labelText: 'From (Combat)',
                border: OutlineInputBorder(),
              ),
              items:
                  const [
                    'attack',
                    'parry',
                  ].map((attr) {
                    return DropdownMenuItem(
                      value: attr,
                      child: Text(attr[0].toUpperCase() + attr.substring(1)),
                    );
                  }).toList(),
              onChanged: (value) => onIntent(
                CharacterCreationIntent.updateDealerModifiers(
                  source: value,
                  target: viewModel.dealerTarget,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Target Attribute (Social)
            DropdownButtonFormField<String>(
              initialValue: viewModel.dealerTarget,
              decoration: const InputDecoration(
                labelText: 'To (Social)',
                border: OutlineInputBorder(),
              ),
              items:
                  const [
                    'intellect',
                    'charisma',
                  ].where((attr) => attr != viewModel.dealerSource).map((attr) {
                    return DropdownMenuItem(
                      value: attr,
                      child: Text(attr[0].toUpperCase() + attr.substring(1)),
                    );
                  }).toList(),
              onChanged: (value) => onIntent(
                CharacterCreationIntent.updateDealerModifiers(
                  source: viewModel.dealerSource,
                  target: value,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEngineerModifiers() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Engineer Modifiers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Transfer points from combat to mental attributes:'),
            const SizedBox(height: 8),

            // Source Attribute (Combat)
            DropdownButtonFormField<String>(
              initialValue: viewModel.engineerSource,
              decoration: const InputDecoration(
                labelText: 'From (Combat)',
                border: OutlineInputBorder(),
              ),
              items:
                  const [
                    'attack',
                    'parry',
                  ].map((attr) {
                    return DropdownMenuItem(
                      value: attr,
                      child: Text(attr[0].toUpperCase() + attr.substring(1)),
                    );
                  }).toList(),
              onChanged: (value) => onIntent(
                CharacterCreationIntent.updateEngineerModifiers(
                  source: value,
                  target: viewModel.engineerTarget,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Target Attribute (Mental)
            DropdownButtonFormField<String>(
              initialValue: viewModel.engineerTarget,
              decoration: const InputDecoration(
                labelText: 'To (Mental)',
                border: OutlineInputBorder(),
              ),
              items:
                  const [
                    'intellect',
                    'dexterity',
                  ].where((attr) => attr != viewModel.engineerSource).map((
                    attr,
                  ) {
                    return DropdownMenuItem(
                      value: attr,
                      child: Text(attr[0].toUpperCase() + attr.substring(1)),
                    );
                  }).toList(),
              onChanged: (value) => onIntent(
                CharacterCreationIntent.updateEngineerModifiers(
                  source: viewModel.engineerSource,
                  target: value,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDexterityModifiers() {
    final dexterity = viewModel.statistics['dexterity'] ?? 0;
    final isNinja = viewModel.selectedJob?.name == 'Ninja';
    final baseAttack = viewModel.baseAttack;
    final baseParry = viewModel.baseParry;

    // Calculate attack/parry without dexterity modifier
    final attackWithoutDex =
        baseAttack +
        viewModel.ogreAttackModifier +
        viewModel.fighterAttackModifier;
    final parryWithoutDex =
        baseParry +
        viewModel.ogreParryModifier +
        viewModel.fighterParryModifier;

    // Get dexterity modifier values
    final dexterityModifier = viewModel.dexterityModifier;
    final dexterityModifierAttribute = viewModel.dexterityModifierAttribute;

    // Calculate final totals with dexterity modifier applied only once
    final totalAttack = dexterityModifierAttribute == 'attack'
        ? attackWithoutDex + dexterityModifier
        : attackWithoutDex;

    final totalParry = dexterityModifierAttribute == 'parry'
        ? parryWithoutDex + dexterityModifier
        : parryWithoutDex;

    // Convert the string attribute to enum for type safety
    final currentAttribute = dexterityModifierAttribute == 'attack'
        ? AttributeType.attack
        : (dexterityModifierAttribute == 'parry' ? AttributeType.parry : null);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dexterity Modifiers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Show current attack and parry values
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Attack: $baseAttack '
                  '${viewModel.ogreAttackModifier != 0 ? '${viewModel.ogreAttackModifier > 0 ? '+' : ''}${viewModel.ogreAttackModifier} (Ogre) ' : ''}'
                  '${viewModel.fighterAttackModifier != 0 ? '${viewModel.fighterAttackModifier > 0 ? '+' : ''}${viewModel.fighterAttackModifier} (Fighter) ' : ''}'
                  '${viewModel.dexterityModifierAttribute == 'attack' ? '${viewModel.dexterityModifier > 0 ? '+' : ''}${viewModel.dexterityModifier} (Dex) ' : ''}'
                  '= $totalAttack',
                ),
                Text(
                  'Parry: $baseParry '
                  '${viewModel.ogreParryModifier != 0 ? '${viewModel.ogreParryModifier > 0 ? '+' : ''}${viewModel.ogreParryModifier} (Ogre) ' : ''}'
                  '${viewModel.fighterParryModifier != 0 ? '${viewModel.fighterParryModifier > 0 ? '+' : ''}${viewModel.fighterParryModifier} (Fighter) ' : ''}'
                  '${viewModel.dexterityModifierAttribute == 'parry' ? '${viewModel.dexterityModifier > 0 ? '+' : ''}${viewModel.dexterityModifier} (Dex) ' : ''}'
                  '= $totalParry',
                ),
                const SizedBox(height: 8),
              ],
            ),

            if (dexterity < 9) ...[
              const Text('Dexterity < 9: Choose -1 to Attack or Parry'),
              const SizedBox(height: 8),
              RadioGroup<AttributeType>(
                groupValue: currentAttribute,
                onChanged: (AttributeType? value) {
                  if (value != null) {
                    onIntent(
                      CharacterCreationIntent.applyDexterityModifier(
                        attribute: value.name,
                      ),
                    );
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        'Attack (${attackWithoutDex + (currentAttribute == AttributeType.attack ? -1 : 0)})',
                      ),
                      leading: const Radio<AttributeType>(
                        value: AttributeType.attack,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Parry (${parryWithoutDex + (currentAttribute == AttributeType.parry ? -1 : 0)})',
                      ),
                      leading: const Radio<AttributeType>(
                        value: AttributeType.parry,
                      ),
                    ),
                  ],
                ),
              ),
            ] else if (dexterity > 12 && !isNinja) ...[
              const Text('Dexterity > 12: Choose +1 to Attack or Parry'),
              const SizedBox(height: 8),
              RadioGroup<AttributeType>(
                groupValue: currentAttribute,
                onChanged: (AttributeType? value) {
                  if (value != null) {
                    onIntent(
                      CharacterCreationIntent.applyDexterityModifier(
                        attribute: value.name,
                      ),
                    );
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        'Attack (${attackWithoutDex + (currentAttribute == AttributeType.attack ? 1 : 0)})',
                      ),
                      leading: const Radio<AttributeType>(
                        value: AttributeType.attack,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Parry (${parryWithoutDex + (currentAttribute == AttributeType.parry ? 1 : 0)})',
                      ),
                      leading: const Radio<AttributeType>(
                        value: AttributeType.parry,
                      ),
                    ),
                  ],
                ),
              ),
            ] else
              const Text('No dexterity modifiers apply'),
          ],
        ),
      ),
    );
  }
}
