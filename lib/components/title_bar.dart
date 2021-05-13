import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key key,
    this.title,
    this.buttonText,
  }) : super(key: key);
  final String title, buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        if (buttonText != null)
          (Container(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                buttonText,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(6)),
          )),
      ],
    );
  }
}
