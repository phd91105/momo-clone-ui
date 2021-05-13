import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:momo_ui/components/balance_box.dart';
import 'package:momo_ui/components/bottom_bar.dart';
import 'package:momo_ui/components/grid_item.dart';
import 'package:momo_ui/components/list_appbar.dart';
import 'package:momo_ui/components/search_bar.dart';
import 'package:momo_ui/components/service_item.dart';
import 'package:momo_ui/components/title_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xff1e5941),
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 170,
                  child: Container(
                    // color: Color(0xff59802c),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff44582c),
                          Color(0xff799e55),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  color: Color(0xff3a6b53),
                ),
                SearchBar(),
                ListAppBarItem(),
              ],
            ),
            BalanceBox(),
            Divider(
              color: Colors.black26,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TitleBar(
                title: 'Dịch vụ yêu thích',
                buttonText: 'Tuỳ chỉnh',
              ),
            ),
            Column(
              children: [
                Container(
                  height: 190,
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2.4),
                    children: [
                      GridBodyItem(
                        image: '5',
                        text: 'Chuyển tiền',
                      ),
                      GridBodyItem(
                        image: '6',
                        text: 'Thanh toán hoá đơn',
                      ),
                      GridBodyItem(
                        image: '7',
                        text: 'Nạp tiền điện thoại',
                      ),
                      GridBodyItem(
                        image: '8',
                        text: 'Mua mã thẻ di động',
                      ),
                      GridBodyItem(
                        image: '9',
                        text: 'Heo đất MoMo',
                      ),
                      GridBodyItem(
                        image: '10',
                        text: 'Data 3G/4G',
                      ),
                      GridBodyItem(
                        image: '11',
                        text: 'Mua vé xem phim',
                      ),
                      GridBodyItem(
                        image: '12',
                        text: 'Du lịch - Đi lại',
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TitleBar(
                title: 'MoMo đề xuất',
                buttonText: 'Tất cả',
              ),
            ),
            Column(
              children: [
                Container(
                  height: 95,
                  child: GridView.count(
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2.4),
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    children: [
                      GridBodyItem(
                        image: '12',
                        text: 'Đặt đồ ăn online',
                      ),
                      GridBodyItem(
                        image: '13',
                        text: 'Mua hộ vé số Vietlott',
                      ),
                      GridBodyItem(
                        image: '14',
                        text: 'Đi bộ cùng MoMo',
                      ),
                      GridBodyItem(
                        image: '15',
                        text: 'Yêu cầu chuyển tiền',
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Image(
                image: AssetImage('assets/images/ads.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TitleBar(
                title: 'Danh mục dịch vụ',
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ServiceItem(
                      image: '16',
                      text: 'Chuyển nhận',
                    ),
                    ServiceItem(
                      image: '17',
                      text: 'Thanh toán',
                    ),
                    ServiceItem(
                      image: '18',
                      text: 'Tiện ích viễn thông',
                    ),
                    ServiceItem(
                      image: '19',
                      text: 'Tài chính',
                    ),
                    ServiceItem(
                      image: '20',
                      text: 'Dịch vụ',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
