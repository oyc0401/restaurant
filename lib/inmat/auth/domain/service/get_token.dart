import 'package:inmat/utils/mobile_id.dart';

import '../../../database/token_database.dart';
import '../../../inmat_api/inmat_api.dart';
import '../../../models/profile_model.dart';
import '../../../models/token_model.dart';

class GetToken {

  static Future<Profile> getProfile(String accessToken) async {
    Map<String, dynamic> map =
        await InMatPureApi.user.getProfile(accessToken);

    Profile model = Profile.fromJson(map);
    return model;
  }

  static Future<Token> getTokenEmail(String id, String password, String deviceIdentifier) async {
    Map<String, dynamic> json = await InMatPureApi.auth.login(
      id: id,
      password: password,
      deviceIdentifier: deviceIdentifier
    );
    Token tokenModel = Token.fromJson(json);
    return tokenModel;
  }
}
