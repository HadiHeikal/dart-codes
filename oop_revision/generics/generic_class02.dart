// BaseResponse class when calling the API
sealed class BaseResponse<T> {}

// SuccessResponse class when calling the API
class SuccessBaseResponse<T> extends BaseResponse<T> {
  final T data;
  SuccessBaseResponse(this.data);
}

// ErrorResponse class when calling the API
class ErrorBaseResponse<T> extends BaseResponse<T> {
  final String errorMessage;
  ErrorBaseResponse(this.errorMessage);
}

void main() {
  // create objects of SuccessResponse and ErrorResponse
  var successResponse = SuccessBaseResponse<String>('Hello World!');
  var errorResponse = ErrorBaseResponse<String>('Error occurred!');

  // print the data and error message
  print(successResponse.data); // Hello World!
  print(errorResponse.errorMessage); // Error occurred!
}
