import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fyp/View/Login.dart';
import 'package:fyp/View/otp.dart';
import 'package:fyp/colors.dart';
import 'package:fyp/wigets/custom_button.dart';
import 'package:fyp/wigets/custom_textfield.dart';

class Register extends StatefulWidget {
  static const routeName = 'Register';
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/Register.png'),
            ),
            CustomTextField(
              label: 'Name',
              obscureText: false,
              controller: namecontroller,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              label: 'Email',
              obscureText: false,
              controller: emailController,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              label: 'Password',
              obscureText: true,
              controller: passwordController,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              label: 'Re-enter Password',
              obscureText: true,
              controller: repasswordController,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              label: 'Gender',
              obscureText: false,
              controller: genderController,
            ),
            SizedBox(
              height: 25.h,
            ),
            CustomButton(
              text: 'Submit',
              onPressed: () {
                Navigator.of(context).pushNamed(Otp.routeName);
              },
            ),
            SizedBox(
              height: 8.h,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Login.routeName);
              },
              child: const Text(
                "Already have an account?",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
