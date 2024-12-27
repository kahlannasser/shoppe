import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppesfrist/Custome/CustomButton.dart';
import 'package:shoppesfrist/Custome/CustomeTextAndIcon.dart';
import 'CreateAccount.dart';
import 'Custome/CustomeText.dart';
import 'Custome/Line.dart';

class Start extends StatefulWidget {
  const Start({super.key});
  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // المحتوى الرئيسي
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 134,
                          height: 134,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(10, 10),
                                blurRadius: 20,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(500),
                          ),
                        ),
                        SvgPicture.asset("Assest/Start.svg"),
                      ],
                    ),
                    const SizedBox(height: 15),
                    // App Title
                    const CustomeTextbold(text: "Shoppe"),
                    const SizedBox(height: 10),
                    // Subtitle
                    const CustomeTextnormal(
                        text: "Beautiful eCommerce UI Kit for your online store"),
                    const SizedBox(height: 50),
                    // Get Started Button
                    const SizedBox(
                      width: double.infinity,
                      height: 61,
                      child: CustomButton(
                        Navigators: CreateAccount(),
                        color: Color(0xFF004CFF),
                        text: "Let's get started",
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Already Have Account Section
                    TextIcon(text:  "I already have an account",Navigators: CreateAccount(),)
                  ],
                ),
              ),
            ),
          ),
          Line(),

        ],
      ),
    );
  }
}
