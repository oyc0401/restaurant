import 'package:restaurant/inmat/user/database/userDataBase.dart';
import 'package:restaurant/inmat/inMatAPI/inMatupdate.dart';

import 'user_model.dart';

class InMatUser {
  InMatUser._privateConstructor();

  static InMatUser get instance => _instance;

  static final InMatUser _instance = InMatUser._privateConstructor();

  /// [_user]에 현재 정보룰 저장해둔다.
  Map<String, dynamic> _user = {};

  Map<String, dynamic> _token = {};

  /// [_user]가 null 이거나 토큰이 없으면 [null]을 리턴한다.
  /// [currentUser]가 [null]이 아니라는것은 현재 토큰이 존재한다는 뜻이다.
  User? get currentUser {
    if (_token.isEmpty || _user.isEmpty) {
      return null;
    }
    return User(_user);
  }

  Future<void> downLoad() async {
    InMatUserDataBase interface = InMatUserDataBase();
    Map<String, dynamic> token = await interface.get();
    _token = token;
  }

  save(Map<String, dynamic> user) async {
    _user.addAll(user);
  }

  delete() {
    _user.clear();
  }

// update(Map<String, dynamic> user) async {
//   InMatUpdate profileUpdate = InMatUpdate();
//   await profileUpdate.update(user);
//   _user.addAll(user);
//   //_saveDataBase(user);
// }

// _saveDataBase(Map<String, dynamic> user) async {
//   InMatUserDataBase interface = InMatUserDataBase();
//   interface.save(user);
// }
}

void main() {
  // InMatUser.instance.save({
  //   "age": 0,
  //   'gender': "male",
  //   'nickName': "oyc0401",
  //   'profileImgUrl': "www.image.png",
  // });
  //
  // User? user = InMatUser.instance.currentUser;
  //
  // String n = user!.nickName;
  // n = "새거";
  //
  // print(InMatUser.instance.currentUser);
  // print(user);
  Map m1 = {
    "age": 0,
    'gender': "male",
    'nickName': "oyc0401",
    'profileImgUrl': "www.image.png",
  };

  Map m2 = {
    "age": 40,
  };

  m1.addAll(m2);

  print(m1);

  // InMatUser._save(user1);
}
