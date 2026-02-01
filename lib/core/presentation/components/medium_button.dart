import 'package:flutter/material.dart';
import 'package:flutter_coursef/ui/color_styles.dart';
import 'package:flutter_coursef/ui/text_styles.dart';

class MediumButton extends StatefulWidget {

  final String text;
  final void Function() onPressed;

  const MediumButton(this.text, this.onPressed,{super.key,});

  @override
  State<MediumButton> createState() => _MediumButtonState();
}

class _MediumButtonState extends State<MediumButton> {

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
        widget.onPressed.call();
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isPressed ? ColorStyles.gray4 : ColorStyles.primary100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 114,
              child: Text(
                widget.text,
                style: TextStyles.normalBold.copyWith(
                color: Colors.white,),
              ),
            ),
            SizedBox(width: 11,),
            Icon(Icons.arrow_forward,
              size: 20,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
