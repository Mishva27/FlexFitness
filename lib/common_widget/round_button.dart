import 'package:flexfitness/common/color_extension.dart';
import 'package:flutter/material.dart';

enum RoundButtonType{ bgGradient, textGradient}
class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final VoidCallback onPressed;
  const RoundButton({super.key, required this.title, this.type = RoundButtonType.textGradient, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: TColor.primaryG, 
          begin: Alignment.centerLeft, 
          end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(25),
      ),
      child: MaterialButton(
                          onPressed: onPressed, 
                          height: 50,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                          textColor: TColor.primaryColor1,
                          color: Colors.transparent,//TColor.white, 
                          elevation: type == RoundButtonType.bgGradient ? 0 :1,
                          minWidth: double.maxFinite,
      
                          child: ShaderMask(
                            blendMode: BlendMode.srcIn,
                            shaderCallback: (bounds){
                              return LinearGradient(
                                colors: TColor.primaryG, 
                                begin: Alignment.centerLeft, 
                                end: Alignment.centerRight).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                            },
      
                            child: Text(title, 
                            style: TextStyle(
                              color: TColor.primaryColor1,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)
                            ),
                          ),
                        ),
    );
  }
}