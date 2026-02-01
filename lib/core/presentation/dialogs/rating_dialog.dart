import 'package:flutter/material.dart';
import 'package:flutter_coursef/core/presentation/components/small_button.dart';
import 'package:flutter_coursef/ui/color_styles.dart';
import 'package:flutter_coursef/ui/text_styles.dart';

class RatingDialog extends StatefulWidget {
  final String title;
  final int score;
  final String actionName;
  final void Function(int score) onChange;

  const RatingDialog({
    super.key,
    required this.title,
    required this.score,
    required this.actionName,
    required this.onChange,
  });

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.title,
        style: TextStyles.smallRegular,
        textAlign: TextAlign.center,
      ),
      content: _RatingBar(value: _value, onChange: (int score) {
        setState(() {
          _value = score;
        });
        widget.onChange.call(score);
      }),
      actions: [
        SmallButton(
          widget.actionName,
          color: ColorStyles.rating,
          onPressed: () {},
          textStyle: TextStyles.smallerRegular,
        ),
      ],
    );
  }
}

class _RatingBar extends StatelessWidget {
  final int value;
  final Function onChange;

  const _RatingBar({ required this.value, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTapDown: (_) {
            onChange.call(index);
          },
          child: Icon(
            value - index >= 0 ? Icons.star : Icons.star_border_outlined,
            size: 30,
            color: ColorStyles.rating,
          ),
        );
      }),
    );
  }
}
