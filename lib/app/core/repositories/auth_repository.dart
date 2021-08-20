import 'package:car_juggle_photo_app/app/constants/api_endpoints.dart';
import 'package:car_juggle_photo_app/app/core/services/http_service.dart';
import 'package:car_juggle_photo_app/app/data/models/user.dart';
import 'package:car_juggle_photo_app/app/utils/storage/auth_storage.dart';

abstract class AuthRepository {
  /// Login with email
  Future<bool> loginWithEmail({
    required String email,
    required String password,
  });
}

class AuthRepositortImpl implements AuthRepository {
  HttpService _httpService = HttpServiceImpl();

  @override
  Future<bool> loginWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final _data = {'email': email, 'password': password};
      final response = await _httpService.post(ApiEndPoints.login, data: _data);
      if (response?.statusCode != 404 && response?.data != null) {
        Map<String, dynamic> responseData =
            new Map<String, dynamic>.from(response?.data);
        if (responseData['status'] == "error") {
          throw (responseData['message']);
        }
        AuthStorage.setUser(User.fromJson(responseData['user']));
        AuthStorage.setToken(responseData['token'].toString());
        return true;
      } else {
        throw Exception();
      }
    } catch (error) {
      print("loginWithEmail() Error: $error");
      return false;
    }
  }
}
