import 'package:flutter/material.dart';
import 'package:momo_ui/components/grid_item.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);
  final String image, text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111,
      child: GridBodyItem(
        image: image,
        text: text,
      ),
    );
  }
}
