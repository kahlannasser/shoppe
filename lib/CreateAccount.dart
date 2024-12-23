import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppesfrist/Custome/CustomButton.dart';
import 'package:shoppesfrist/Custome/CustomTextField.dart';
import 'package:shoppesfrist/Custome/CustomeText.dart';
import 'package:shoppesfrist/Start.dart';
import 'Custome/CustomeImages.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final Map<String, String> flagWithNationalId = {
    'Assest/camera.svg': '966',
    'Assest/CreateAccounttwo.svg': '1',
  };

  String selectedFlag = 'Assest/camera.svg';
  String nationalId = '966';
  bool isEditingNationalId = false; // علم على ما إذا كان المستخدم بدأ الكتابة أم لا

  TextEditingController nationalIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nationalIdController.text = nationalId;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 390,
            pinned: true,
            flexibleSpace: Stack(
              children: [
                Container(color: Colors.white, height: 390, width: double.infinity),
                const imagewhite(),
                const Positioned(
                  top: 90,
                  left: 30,
                  child: Center(
                    child: CustomeTextbold(text: "Create\nAccount"),
                  ),
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
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CustomTextField(
                  text: "Email",
                  borderRadius: 50,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  text: "Password",
                  borderRadius: 50, // شكل مربع
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(50), // شكل مربع
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                    child: Row(
                      children: [
                        // إخفاء العلم في حالة الكتابة
                        if (!isEditingNationalId) ...[
                          // العلم المحدد
                          SvgPicture.asset(
                            selectedFlag,
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 15),
                          // القائمة المنسدلة لاختيار العلم
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selectedFlag,
                              icon: Icon(Icons.arrow_drop_down),
                              items: flagWithNationalId.keys.map((url) {
                                return DropdownMenuItem<String>(
                                  value: url,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        url,
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(width: 8),
                                      Text("${flagWithNationalId[url]}"),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  selectedFlag = newValue!;
                                  nationalId = flagWithNationalId[newValue]!;
                                  nationalIdController.text = nationalId;
                                });
                              },
                            ),
                          ),
                        ],
                        Spacer(),
                        // حقل الرقم الوطني فقط عند الكتابة
                        Expanded(
                          child: TextField(
                            controller: nationalIdController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Enter national ID",
                              border: InputBorder.none,
                              isDense: true,
                            ),
                            onChanged: (value) {
                              setState(() {
                                nationalId = value; // تحديث الرقم الوطني
                                isEditingNationalId = value.isNotEmpty; // تحديد ما إذا كان المستخدم بدأ الكتابة
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(text: "Done",color: Color(0xFF004CFF),Navigators: Start(),),
                SizedBox(height: 20,),
                CustomeTextnormal(text: "Cancel",),
                SizedBox(height: 50,),
                Container(height: 5,width: 200,decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25)
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
