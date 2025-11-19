import 'package:flutter/material.dart';
import 'package:myapp/src/data/creatures/player_character/job.dart';
import 'package:myapp/src/data/creatures/player_character/people.dart';
import 'package:myapp/src/data/creatures/player_character/specialization.dart';

class Step2Character extends StatelessWidget {
  const Step2Character({
    required this.availablePeople,
    required this.availableJobs,
    required this.selectedPeople,
    required this.selectedJob,
    required this.selectedSpecialization,
    required this.onPeopleChanged,
    required this.onJobChanged,
    required this.onSpecializationChanged,
    super.key,
  });

  final List<People> availablePeople;
  final List<Job> availableJobs;
  final People? selectedPeople;
  final Job? selectedJob;
  final Specialization? selectedSpecialization;
  final ValueChanged<People> onPeopleChanged;
  final ValueChanged<Job> onJobChanged;
  final ValueChanged<Specialization> onSpecializationChanged;

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
          .map(
            (people) => DropdownMenuItem(
              value: people,
              child: Text(people.name),
            ),
          )
          .toList(),
      onChanged: (people) {
        if (people != null) {
          onPeopleChanged(people);
        }
      },
      decoration: const InputDecoration(
        labelText: 'People',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildJobDropdown(BuildContext context) {
    if (availableJobs.isEmpty) return const SizedBox.shrink();

    return DropdownButtonFormField<Job>(
      initialValue: selectedJob,
      items: availableJobs
          .map(
            (job) => DropdownMenuItem(
              value: job,
              child: Text(job.name),
            ),
          )
          .toList(),
      onChanged: (job) {
        if (job != null) {
          onJobChanged(job);
        }
      },
      decoration: const InputDecoration(
        labelText: 'Job',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildSpecializationDropdown(BuildContext context) {
    if (selectedJob == null || selectedJob!.specializations.isEmpty) {
      return const SizedBox.shrink();
    }

    return DropdownButtonFormField<Specialization>(
      initialValue: selectedSpecialization,
      items: selectedJob!.specializations
          .map(
            (spec) => DropdownMenuItem(
              value: spec,
              child: Text(spec.name),
            ),
          )
          .toList(),
      onChanged: (spec) {
        if (spec != null) {
          onSpecializationChanged(spec);
        }
      },
      decoration: const InputDecoration(
        labelText: 'Specialization',
        border: OutlineInputBorder(),
      ),
    );
  }
}
