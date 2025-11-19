import 'package:flutter/material.dart';
import 'package:myapp/src/data/creatures/player_character/player_character.dart';

class CharacterListTab extends StatelessWidget {
  const CharacterListTab({
    required this.isLoading,
    required this.characters,
    required this.onCreateCharacter,
    required this.onCharacterSelected,
    super.key,
  });

  final bool isLoading;
  final List<PlayerCharacter> characters;
  final VoidCallback onCreateCharacter;
  final void Function(int index) onCharacterSelected;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (characters.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No characters found'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onCreateCharacter,
              child: const Text('Create Character'),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        final character = characters[index];
        return ListTile(
          title: Text(character.name),
          subtitle: Text(character.people.name),
          onTap: () => onCharacterSelected(index),
        );
      },
    );
  }
}
