import 'package:carrito/controllers/registration_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterLoginPage extends StatelessWidget {
  final controller = Get.put(LoginRegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginRegisterController>(
        init: LoginRegisterController(),
        builder: (_) {
          return Form(
            key: controller.formKey,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: controller.passwordController,
                      decoration: const InputDecoration(labelText: 'Password'),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      alignment: Alignment.center,
                      child: RaisedButton(
                        child: Text('Register'),
                        onPressed: () async {
                          _.register();
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(controller.success == null
                          ? ''
                          : (controller.success
                              ? 'Successfully registered ' +
                                  controller.userEmail
                              : 'Registration failed')),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
