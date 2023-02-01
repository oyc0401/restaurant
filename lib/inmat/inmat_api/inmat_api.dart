import 'package:inmat/auth_check.dart';
import 'package:inmat/utils/mobile_id.dart';

import '../auth/inmat_auth.dart';

import 'inmat_http.dart';

part 'api/account.dart';

part 'api/community.dart';

part 'api/restaurant.dart';

part 'api/auth.dart';

part 'api/utils.dart';

class InMatApi {
  InMatApi._();

  static AccountApi get account => AccountApi();

  static CommunityApi get community => CommunityApi();

  static RestaurantApi get restaurant => RestaurantApi();

  static AuthApi get auth => AuthApi();

  static UtilsApi get utils => UtilsApi();
}
