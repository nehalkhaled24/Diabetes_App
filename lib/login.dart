import 'package:diabetes/custom_text_form_field.dart';
import 'package:diabetes/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const String routeName = 'login screen';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Image.asset('assets/images/background.png',
            width: double.infinity, fit: BoxFit.fill),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                  Center(
                      child: Text(
                    'Welcome',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
                  Text('Login to your account',
                      style: TextStyle(color: Colors.grey, fontSize: 25)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  CustomTextFromField(
                    hintText: 'Enter your email',
                    labelText: 'Email Address',
                    icon: Icons.email,
                    keyboardTybe: TextInputType.emailAddress,
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'please enter email';
                      }
                      return null;
                    },
                  ),
                  CustomTextFromField(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    suffixIcon: Icons.visibility_off,
                    icon: Icons.lock,
                    isObscure: true,
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'please enter password';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) ;
                      },
                      child: Text('Login', style: TextStyle(fontSize: 20)),
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 130))),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      )),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, RegisterScreen.routeName);
                            },
                            child: Text(
                              'Create Now',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(34.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(image: AssetImage('assets/images/google.png')),
                        Image(image: AssetImage('assets/images/facebook.png')),
                        Image(image: AssetImage('assets/images/instagram.png')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
