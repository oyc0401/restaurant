import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../../inmat/auth/inMatAuth.dart';
import '../NavigatePage.dart';


class ProfileForm with ChangeNotifier {
  int _age = 0;
  String _gender = "";
  String _nickName = "";
  String _password = "";
  String _phoneNumber = "";
  String _username = "";

  setAge(int age) {
    _age = age;
    notifyListeners();
  }

  setGender(String gender) {
    _gender = gender;
    notifyListeners();
  }

  setnickName(String nickName) {
    _nickName = nickName;
    notifyListeners();
  }

  setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  setPhoneNumber(String gender) {
    _gender = gender;
    notifyListeners();
  }
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("회원가입: 이메일"),
      ),
      body: ChangeNotifierProvider<ProfileForm>(
        create: (context) => ProfileForm(),
        child: RegisterInput(),
      ),
    );
  }
}

class RegisterInput extends StatelessWidget {
  const RegisterInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Row(children: [
      //   Text("아이디: "),
      //   Expanded(child: TextField(onChanged: (text) {
      //     username = text;
      //   })),
      // ]),
      // Row(children: [
      //   Text("비밀번호: "),
      //   Expanded(child: TextField(onChanged: (text) {
      //     password = text;
      //   })),
      // ]),
      // Row(children: [
      //   Text("닉네임: "),
      //   Expanded(child: TextField(onChanged: (text) {
      //     nickName = text;
      //   })),
      // ]),
      // Row(children: [
      //   Text("나이: "),
      //   Expanded(child: TextField(onChanged: (text) {
      //     age = int.parse(text);
      //   })),
      // ]),
      // Row(children: [
      //   Text("성별: "),
      //   Expanded(child: TextField(onChanged: (text) {
      //     gender = text;
      //   })),
      // ]),
      // Row(children: [
      //   Text("전화번호: "),
      //   Expanded(child: TextField(onChanged: (text) {
      //     phoneNumber = text;
      //   })),
      // ]),

      CupertinoButton(
          child: Text("회원가입"),
          onPressed: () {
            InMatAuth.registerEmail(
              id: "test123",
              email: "dsad32@gmail.com",
              password: "qwe12345&&",
              profile: Profile(
                  age: 10,
                  gender: "M",
                  nickName: "한국어",
                  phoneNumber: "010-2748-2332"),
            );
          }),
      // CupertinoButton(
      //     child: Text("회원정보 입력 이동"),
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         CupertinoPageRoute(
      //           builder: (context) => const RegisterProfile(),
      //         ),
      //       );
      //     }),
    ]);
  }
}
