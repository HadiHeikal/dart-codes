// sealed_class is an abstract class that can only be extended or implemented within the same file.
// It is used to create a closed set of subclasses,
//which allows for exhaustive pattern matching and better type safety.
sealed class BaseResponse {
  BaseResponse();
}

class SuccessResponse extends BaseResponse {
  final String data;
  SuccessResponse(this.data);
}

class ErrorResponse extends BaseResponse {
  final String errorMessage;
  ErrorResponse(this.errorMessage);
}

// test the sealed class
void main() {
  BaseResponse response = SuccessResponse("Data loaded successfully");
  switch (response) {
    case SuccessResponse(data: var data):
      print("Success: $data");
      break;
    case ErrorResponse(errorMessage: var errorMessage):
      print("Error: $errorMessage");
      break;
  }
}
