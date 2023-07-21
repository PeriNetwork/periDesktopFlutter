import 'constants/constants.dart';
import 'package:dio/dio.dart';

final dio = Dio();

class ApiServicePeriUser {
  // faça um código que retorne 200 caso o login seja feito com sucesso
  // e 400 caso o login falhe
  static Future<int> login(String email, String password) async {
    try {
      String url = Uri.parse(ApiConstants.loginURL
              .replaceAll(':email', email)
              .replaceAll(':password', password))
          .toString();

      final response = await dio.get(url);
      print(response.data);
      if (response.statusCode == 200) {
        return 200;
      } else {
        throw DioException(requestOptions: RequestOptions(), message: "Erro ao fazer login");
      }
    } on DioException catch (e) {
      print(e.message);
      return 400;
    }
  }
}
