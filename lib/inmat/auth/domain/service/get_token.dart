import 'package:inmat/utils/mobile_id.dart';

import '../../../database/token_database.dart';
import '../../../inmat_api/inmat_api.dart';
import '../model/profile_model.dart';
import '../model/token_model.dart';

class GetToken {

  static Future<ProfileModel> getProfile(String accessToken) async {
    Map<String, dynamic> map =
        await InMatApi.user.getProfile(accessToken);

    ProfileModel model = ProfileModel.fromJson(map);
    return model;
  }

  static Future<TokenModel> getTokenEmail(String id, String password, String deviceIdentifier) async {
    Map<String, dynamic> json = await InMatApi.auth.login(
      id: id,
      password: password,
      deviceIdentifier: deviceIdentifier
    );
    TokenModel tokenModel = TokenModel.fromJson(json);
    return tokenModel;
  }
}
