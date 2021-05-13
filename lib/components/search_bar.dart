import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.5, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 32,
            width: 280,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tìm kiếm',
                border: InputBorder.none,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xff4d785e),
            ),
          ),
          Icon(
            Icons.notifications_outlined,
            color: Colors.white70,
          ),
          Icon(
            Icons.person,
            color: Colors.white70,
          ),
        ],
      ),
    );
  }
}
