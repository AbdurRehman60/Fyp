import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyp/View/getstarted.dart';
import 'package:fyp/View/registeration.dart';
import 'package:fyp/colors.dart';
import 'package:fyp/wigets/custom_button.dart';
import 'package:fyp/wigets/custom_textfield.dart';

class Login extends StatefulWidget {
  static const routeName = 'Loginpage';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
              child: Image.asset('assets/images/Login.png'),
            ),
            SizedBox(
              height: 10.h,
            ),

            //Custom Wigets

            CustomTextField(
              label: "Email",
              obscureText: false,
              controller: emailController,
            ),
            SizedBox(
              height: 15.h,
            ),

            //Custom Wigets

            CustomTextField(
              label: "Password",
              obscureText: true,
              controller: passwordController,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 229,
                right: 27,
              ),
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),

            //Custom Wigets

            CustomButton(
              text: "Login",
              onPressed: () {
                Navigator.of(context).pushNamed(Start.routeName);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Register.routeName);
              },
              child: const Text(
                "You don’t have an account?",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(280, 47),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(
                    60,
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/svg/G.svg'),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Continue with Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff1877F2),
                minimumSize: const Size(280, 47),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(
                    60,
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset("assets/svg/f.svg"),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Text(
                    "Continue with FaceBook",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
