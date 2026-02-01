import 'package:flutter/material.dart';
import 'package:flutter_coursef/ui/text_styles.dart';
import 'package:flutter_coursef/ui/color_styles.dart';

class SmallButton extends StatefulWidget {
  final String text;
  final void Function() onPressed;
  final Color color;
  final TextStyle? textStyle;

  const SmallButton(
      this.text, {
        super.key,
        this.color = ColorStyles.primary100,
        this.textStyle,
        required this.onPressed,
      });

  @override
  State<SmallButton> createState() => _SmallButtonState();
}


class _SmallButtonState extends State<SmallButton> {
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
        height: 37,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isPressed ? ColorStyles.gray3 : widget.color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: (widget.textStyle ?? TextStyles.normalRegular)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
