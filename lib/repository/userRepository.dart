import 'package:my_app/models/UserModel.dart';

import '../api/UserApi.dart';

class UserRepository {
  Future<bool> registerUser(User user) async {
    return await UserAPI().registerUser(user);
  }

  Future<bool> loginUser(User user) async {
    return await UserAPI().loginUser(user);
  }
  // Future<bool> login(String username, String password){
  //   return UserAPI().login(username, password);
  // }
}
