import 'package:flexfitness/common/color_extension.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hey there", 
                style: TextStyle(color: TColor.gray, fontSize: 16),
              ),

              Text(
                "Create an Account", 
                style: TextStyle(color: TColor.black, fontSize: 20, fontWeight: FontWeight.w700),
              ),

              SizedBox(height: media.width * 0.05,),

              
            ],
          ),
        ),
      ),
    );
  }
}