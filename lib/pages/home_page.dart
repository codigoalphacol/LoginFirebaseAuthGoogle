import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Firebase - Email - Google",
          style: TextStyle(fontSize: 12),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
            child: SignInButtonBuilder(
              icon: Icons.person_add,
              backgroundColor: Colors.blueAccent,
              text: 'Registration',
              onPressed: () => Get.toNamed("/registration"),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
          ),
          Container(
            child: SignInButtonBuilder(
              icon: Icons.verified_user,
              backgroundColor: Colors.orange,
              text: 'Sign In',
              onPressed: () => Get.toNamed("/loginpage"),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
