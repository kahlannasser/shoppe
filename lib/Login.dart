import 'package:flutter/material.dart';
import 'package:shoppesfrist/CreateAccount.dart';
import 'package:shoppesfrist/Custome/CustomButton.dart';
import 'package:shoppesfrist/Custome/CustomTextField.dart';
import 'package:shoppesfrist/Custome/CustomeImages.dart';
import 'package:shoppesfrist/Custome/Line.dart';
import 'package:shoppesfrist/Custome/TextButton.dart';
import 'package:shoppesfrist/Password.dart';

import 'Custome/CustomeText.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: 450,
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    child: const imagewhite(),
                    width: 305,
                    height: 300,
                  ),
                  Container(
                    child: Imagebuldes(),
                    width: 200,
                  ),
                  Positioned(
                    child: Imagesbule(),
                    left: 295,
                    bottom: 2,
                  ),
                ],
              ),
            ),
            Container(
              child: CustomeTextbold(
                text: "Login",
              ),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: bubble(),
                      padding: EdgeInsets.only(left: 120),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            CustomeTextnormal(
                              text: '      Good to see you back!',
                            ),
                            SizedBox(width:25),
                            Icon(Icons.heart_broken),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: CustomTextField(
                            text: "Email",
                            controller: emailController,
                            borderRadius: 50,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                        SizedBox(height:10),
                        const SizedBox(
                          width: 320,
                          height: 61,
                          child: CustomButton(
                            Navigators: Password(),
                            color: Color(0xFF004CFF),
                            text: "Next",
                          ),
                        ),
                        SizedBox(height: 10,),
                        CustomTextButton(),
                        SizedBox(height: 60,),
                        Line(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
