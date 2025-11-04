import 'package:e_commerce_learning_app/login/login_model.dart';
import 'package:e_commerce_learning_app/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('تسجيل الدخول')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            Text('مرحبا بعودتك !', style: TextStyle(fontSize: 20)),
            TextField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'البريد الالكتروني'),
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(hintText: 'كلمة المرور'),
            ),
            FilledButton(
              onPressed: () {
                final loginModel = LoginModel(
                  emailController.text,
                  passwordController.text,
                );

                print(loginModel.toJson());
              },
              child: Text('تسجيل الدخول'),
            ),

            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
              child: Text('إنشاء حساب'),
            ),
          ],
        ),
      ),
    );
  }
}
