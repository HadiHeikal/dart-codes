// The class is sealed: direct subclasses can only exist in this exact file
sealed class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final String token;
  AuthSuccess(this.token);
}

class AuthError extends AuthState {
  final String message;
  final int code;
  AuthError(this.message, this.code);
}

/*
Widget buildUI(AuthState state) {
  // Exhaustive switch expression forcing coverage for all subclasses
  return switch (state) {
    AuthInitial() || AuthLoading() => const CircularProgressIndicator(),
    
    AuthSuccess(token: var userToken) => Text('Welcome! Token: $userToken'),
    
    AuthError(message: var msg, code: var code) => Text('Error $code: $msg'),
  };
}
*/
/*
Widget buildErrorUI(AuthState state) {
  return switch (state) {
    // Handling specific error conditions using guard clauses
    AuthError(code: var code) when code == 401 => const Text('Unauthorized! Please log in again.'),
    
    AuthError(message: var msg) => Text('General Error: $msg'),
    
    // Remaining valid states
    AuthInitial() || AuthLoading() => const CircularProgressIndicator(),
    AuthSuccess() => const Text('Success'),
  };
}
*/
