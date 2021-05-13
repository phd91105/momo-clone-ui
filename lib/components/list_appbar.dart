import 'package:flutter/material.dart';
import 'package:momo_ui/components/appbar_item.dart';

class ListAppBarItem extends StatelessWidget {
  const ListAppBarItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarItem(
            image: '1',
            text: 'Nạp tiền',
          ),
          AppBarItem(
            image: '2',
            text: 'Rút tiền',
          ),
          AppBarItem(
            image: '3',
            text: 'Thanh toán',
          ),
          AppBarItem(
            image: '4',
            text: 'Quét mã',
          ),
        ],
      ),
    );
  }
}
