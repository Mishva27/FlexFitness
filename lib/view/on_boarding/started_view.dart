import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
        width: media.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                    colors: TColor.primaryG,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Spacer(),
                  Text("Fitness", 
                    style: TextStyle(
                    color: TColor.black, 
                    fontSize: 36, 
                    fontWeight: FontWeight.w700
                  ),
                  ),

                  Text("Everybody Can Train", 
                    style: TextStyle(
                    color: TColor.gray, 
                    fontSize: 18, 
                  ),),

                  const Spacer(),

                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: MaterialButton(
                        onPressed: (){}, 
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        child: Text("Get Started", style: TextStyle(
                        color: TColor.gray, 
                        fontSize: 16,
                        fontWeight: FontWeight.w700)
                        ),
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
    ));
  }
}