import 'package:flutter/material.dart';
import 'package:shoppesfrist/Custome/Cont.dart';
import 'package:shoppesfrist/Custome/CustomeImages.dart';
import 'package:shoppesfrist/Custome/CustomeText.dart';

import 'Custome/Line.dart';
class passwordTyping extends StatefulWidget {
  const passwordTyping({super.key});

  @override
  State<passwordTyping> createState() => _passwordTypingState();
}

class _passwordTypingState extends State<passwordTyping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(

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
                    Positioned(child: CircleImage(imagePath: "Assest/artist.jpg",),left: 135,top: 120,),
                    Positioned(child:CustomeTextnormal400(),top: 240,left: 100,),
                    Positioned(child:      CustomeTextnormal(text: "Type your password",),top: 300,left:90,)

                  ],
                ),


              ),



            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              ContCricle(color: Color(0xFF004CFF),),
              SizedBox(width: 5,),
              ContCricle(color: Color(0xFF004CFF),),
              SizedBox(width: 5,),
              ContCricle(color: Color(0xFF004CFF),),
              SizedBox(width: 5,),
              ContCricle(color: Color(0xFF004CFF),),
              SizedBox(width: 5,),
              ContCricle(color: Color(0xFF004CFF),),
              SizedBox(width: 5,),
              ContCricle(color: Colors.blueGrey,),
              SizedBox(width: 5,),
              ContCricle(color: Colors.blueGrey,),
              SizedBox(width: 5,),
              ContCricle(color: Colors.blueGrey,),
              SizedBox(width: 5,),
              ContCricle(color: Colors.blueGrey,),
              SizedBox(width: 5,),
              ContCricle(color: Colors.blueGrey,),

            ],
          ),

        SizedBox(height: 250,),
           Line(),

        ],
      ),
    );
  }
}
