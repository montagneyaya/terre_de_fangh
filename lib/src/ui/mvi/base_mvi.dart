import 'package:flutter/material.dart';
import 'package:myapp/src/ui/mvi/intent.dart';

/// Represents the current state of the view
abstract class MviState {
  const MviState();
}

/// Represents the view model that will be used to render the ui
abstract class MviViewModel {
  const MviViewModel();
}

/// A base widget that implements the mvi pattern
abstract class MviView<VM extends MviViewModel, I extends MviIntent> extends StatefulWidget {
  const MviView({super.key});

  @override
  MviViewState<VM, I> createState();
}

/// The state for [MviView] that handles the business logic
abstract class MviViewState<VM extends MviViewModel, I extends MviIntent>
    extends State<MviView<VM, I>> {
  /// The current view model
  late VM viewModel;

  /// Called when the view is first created
  @mustCallSuper
  @protected
  void init() {
    viewModel = createInitialViewModel();
  }

  /// Creates the initial view model
  @protected
  VM createInitialViewModel();

  /// Handles an intent from the ui
  @protected
  void handleIntent(I intent);

  /// Updates the view model and triggers a rebuild
  @protected
  void updateViewModel(VM newViewModel) {
    setState(() {
      viewModel = newViewModel;
    });
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return buildView(context, viewModel, handleIntent);
  }

  /// Builds the ui based on the current view model
  @protected
  Widget buildView(
      BuildContext context,
      VM viewModel,
      void Function(I) onIntent,
      );
}

/// A mixin that provides state management for mvi
mixin MviStateMixin<VM extends MviViewModel, I extends MviIntent>
on State<MviView<VM, I>> {
  late VM _viewModel;

  VM get viewModel => _viewModel;

  @protected
  void updateState(VM newViewModel) {
    if (mounted) {
      setState(() {
        _viewModel = newViewModel;
      });
    }
  }

  @protected
  void handleIntent(I intent) {
    // To be implemented by the concrete class
  }

  @override
  Widget build(BuildContext context) {
    return buildView(context, _viewModel, handleIntent);
  }

  /// Builds the ui based on the current view model
  @protected
  Widget buildView(
      BuildContext context,
      VM viewModel,
      void Function(I) onIntent,
      );
}
