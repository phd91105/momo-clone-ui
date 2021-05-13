import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffe4e8e6),
            ),
            child: Image(
              image: AssetImage('assets/images/$image.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              text.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
