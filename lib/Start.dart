import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppesfrist/Custome/CustomButton.dart';
import 'CreateAccount.dart';
import 'Custome/CustomeText.dart';

class Start extends StatefulWidget {
  const Start({super.key});
  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo with Circle
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
                        )
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
              const SizedBox(height: 100),
              // Get Started Button
              const SizedBox(
                width: double.infinity,
                height: 61,
                child: CustomButton(
                  Navigators:CreateAccount(),
                  color: Color(0xFF004CFF),

                  text: "Let's get started",
                ),
              ),
              const SizedBox(height: 30),
              // Already Have Account Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "I already have an account",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Color(0xFF004CFF),
                      borderRadius: BorderRadius.all(Radius.circular(500)),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.keyboard_tab_sharp),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Container(height: 5,width: 200,decoration: BoxDecoration(
                  color: Colors.black,
                borderRadius: BorderRadius.circular(25)
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
