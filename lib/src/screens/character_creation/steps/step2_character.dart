import 'package:flutter/material.dart';
import 'package:myapp/src/data/creatures/player_character/job.dart';
import 'package:myapp/src/data/creatures/player_character/people.dart';
import 'package:myapp/src/data/creatures/player_character/specialization.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_intent.dart';

class Step2Character extends StatelessWidget {
  const Step2Character({
    required this.availablePeople,
    required this.availableJobs,
    required this.availableSpecializations,
    required this.selectedPeople,
    required this.selectedJob,
    required this.selectedSpecialization,
    required this.onIntent, // Changed to use MVI intents
    super.key,
  });

  final List<People> availablePeople;
  final List<Job> availableJobs;
  final List<Specialization> availableSpecializations;
  final People? selectedPeople;
  final Job? selectedJob;
  final Specialization? selectedSpecialization;
  final void Function(CharacterCreationIntent) onIntent; // MVI intent callback

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildPeopleDropdown(context),
          const SizedBox(height: 20),
          _buildJobDropdown(context),
          const SizedBox(height: 20),
          _buildSpecializationDropdown(context),
        ],
      ),
    );
  }

  Widget _buildPeopleDropdown(BuildContext context) {
    if (availablePeople.isEmpty) return const SizedBox.shrink();

    return DropdownButtonFormField<People>(
      initialValue: selectedPeople,
      items: availablePeople
          .map((people) => DropdownMenuItem(
        value: people,
        child: Text(people.name),
      ))
          .toList(),
      onChanged: (people) {
        if (people != null) {
          onIntent(CharacterCreationIntent.selectPeople(people));
        }
      },
      decoration: const InputDecoration(
        labelText: 'People',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildJobDropdown(BuildContext context) {
    if (selectedPeople == null || availableJobs.isEmpty) {
      return const SizedBox.shrink();
    }

    return DropdownButtonFormField<Job>(
      initialValue: selectedJob,
      items: availableJobs
          .map((job) => DropdownMenuItem(
        value: job,
        child: Text(job.name),
      ))
          .toList(),
      onChanged: (job) {
        if (job != null) {
          onIntent(CharacterCreationIntent.selectJob(job));
        }
      },
      decoration: const InputDecoration(
        labelText: 'Job',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildSpecializationDropdown(BuildContext context) {
    if (selectedJob == null) {
      return const SizedBox.shrink();
    }

    return DropdownButtonFormField<Specialization>(
      initialValue: selectedSpecialization,
      items: availableSpecializations
          .map(
            (spec) => DropdownMenuItem(
              value: spec,
              child: Text(spec.name),
            ),
          )
          .toList(),
      onChanged: (spec) {
        if (spec != null) {
          onIntent(CharacterCreationIntent.selectSpecialization(spec));
        }
      },
      decoration: const InputDecoration(
        labelText: 'Specialization',
        border: OutlineInputBorder(),
      ),
    );
  }
}
