import 'package:flutter/material.dart';

class BalanceBox extends StatelessWidget {
  const BalanceBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.visibility_outlined,
                    color: Colors.black26,
                  ),
                  Text(
                    'Số dư trong ví',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Text(
              '12.345đ',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
