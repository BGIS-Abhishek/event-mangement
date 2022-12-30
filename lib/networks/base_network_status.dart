class ApiResult<T> {
  ApiStatus? status;
  T response;

  ApiResult({required this.status, required this.response});
  T get getResponse => response;

  ApiStatus? get getStatus => status;
}

enum ApiStatus { success, failed, unauthorized, forbid, badRequest }

class ApiStatusCode {
  static int SUCCESS = 200;
  static int FORBID = 403;
  static int UnAUTHORIZED = 401;
  static int BADREQUEST = 400;
}
