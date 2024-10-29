abstract class ApiServices {
  Future get(String path,
      {dynamic? data, Map<String, dynamic>? queryparametrs});
  Future post(String path,
      {Object? data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false});
  Future delete(String path,
      {dynamic? data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false});
  Future patch(String path,
      {dynamic? data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false});

  Future put(String path,
      {Object? data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false});
}
