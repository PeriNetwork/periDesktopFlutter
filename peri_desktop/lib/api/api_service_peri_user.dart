import 'constants/constants.dart';
import 'package:dio/dio.dart';

final dio = Dio();

class ApiServicePeriUser {
  // faça um código que retorne 200 caso o login seja feito com sucesso
  // e 400 caso o login falhe
  static login(String email, String password) async {
    try {
      var response = await dio.post(
        '${ApiConstants.baseURL}user/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      return response.statusCode;
    } on DioException catch (e) {
      print(e.message);
      return 400;
    }
  }

  static getUsersCount() async {
    // count how much ocurrencies in response
    try {
      var response = await dio.get('${ApiConstants.baseURL}user/howmany');
      return response.toString();
    } on DioException catch (e) {
      print(e.message);
      return 400;
    }
  }
}
