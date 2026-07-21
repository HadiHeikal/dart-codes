sealed class ResultState {}

class SuccessState extends ResultState {
  final String data;
  SuccessState(this.data);
}

class ErrorState extends ResultState {
  final String errorMessage;
  ErrorState(this.errorMessage);
}

class LoadingState extends ResultState {}

class InitialState extends ResultState {}

String handleState(ResultState state) {
  return switch (state) {
    SuccessState successState => 'Data loaded: ${successState.data}',
    ErrorState errorState => 'Error occurred: ${errorState.errorMessage}',
    LoadingState() => 'Loading, please wait...',
    InitialState() => 'Initial state, ready to start.',
  };
}
