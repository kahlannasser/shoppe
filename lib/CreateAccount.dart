import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppesfrist/Custome/CustomButton.dart';
import 'package:shoppesfrist/Custome/CustomTextField.dart';
import 'package:shoppesfrist/Custome/CustomeText.dart';
import 'package:shoppesfrist/Custome/Line.dart';
import 'package:shoppesfrist/Custome/TextButton.dart';
import 'Custome/CustomeImages.dart';
import 'Login.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nationalIdController = TextEditingController();

  String selectedFlag = 'Assest/camera.svg'; // العلم الافتراضي
  String nationalId = ''; // الرقم الوطني المدخل من المستخدم
  bool isEditingNationalId = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                  imagewhiteone(),
                  const Positioned(
                    top: 70,
                    left: 30,
                    child: CustomeTextbold(text: "Create\nAccount"),
                  ),
                  const Positioned(
                    left: 280,
                    top: 18,
                    child: imageBule(),
                  ),
                  Positioned(
                    child: ImageCamera(),
                    left: 22,
                    top: 260,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              // حقل Email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomTextField(
                  text: "Email",
                  controller: emailController,
                  borderRadius: 50,
                  textDirection: TextDirection.ltr
                ),
              ),
              const SizedBox(height: 20),
              // حقل Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomTextField(
                  text: "Password",
                  controller: passwordController,
                  borderRadius: 50,
                  textDirection: TextDirection.ltr,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        selectedFlag,
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: TextField(
                          controller: nationalIdController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: " |    Enter national ID",
                            border: InputBorder.none,
                            isDense: true,
                          ),
                          onChanged: (value) {
                            setState(() {
                              nationalId = value;
                              isEditingNationalId = value.isNotEmpty;


                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // زر "Done"
              const SizedBox(
                width: double.infinity,
                height: 61,
                child: CustomButton(
                  Navigators: Login(),
                  color: Color(0xFF004CFF),
                  text: "Done",
                ),
              ),
              const SizedBox(height: 20),
              CustomTextButton(),
              const SizedBox(height: 20),
              Line(),

            ],
          ),
        ),
      ),
    );
  }
}
