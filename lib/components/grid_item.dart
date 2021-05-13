import 'package:flutter/material.dart';

class GridBodyItem extends StatelessWidget {
  const GridBodyItem({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);
  final String image, text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage('assets/images/$image.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                text,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xfff8f9fa),
        ),
      ),
    );
  }
}
