import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xffbe0069),
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: 'MOMO',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.wallet_giftcard,
          ),
          label: 'Ưu đãi',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.history,
          ),
          label: 'Lịch sử GD',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
          ),
          label: 'Bạn bè',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
          ),
          label: 'Ví của tôi',
        ),
      ],
    );
  }
}
