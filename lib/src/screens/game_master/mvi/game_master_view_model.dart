import 'package:myapp/src/ui/mvi/base_mvi.dart';

class GameMasterViewModel extends MviViewModel {

  const GameMasterViewModel({
    this.isLoading = false,
    this.error,
  });
  final bool isLoading;
  final String? error;

  GameMasterViewModel copyWith() {
    return GameMasterViewModel(
      isLoading: isLoading,
      error: error,
    );
  }
}
