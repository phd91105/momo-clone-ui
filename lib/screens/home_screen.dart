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
                title: 'D???ch v??? y??u th??ch',
                buttonText: 'Tu??? ch???nh',
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
                        text: 'Chuy???n ti???n',
                      ),
                      GridBodyItem(
                        image: '6',
                        text: 'Thanh to??n ho?? ????n',
                      ),
                      GridBodyItem(
                        image: '7',
                        text: 'N???p ti???n ??i???n tho???i',
                      ),
                      GridBodyItem(
                        image: '8',
                        text: 'Mua m?? th??? di ?????ng',
                      ),
                      GridBodyItem(
                        image: '9',
                        text: 'Heo ?????t MoMo',
                      ),
                      GridBodyItem(
                        image: '10',
                        text: 'Data 3G/4G',
                      ),
                      GridBodyItem(
                        image: '11',
                        text: 'Mua v?? xem phim',
                      ),
                      GridBodyItem(
                        image: '12',
                        text: 'Du l???ch - ??i l???i',
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TitleBar(
                title: 'MoMo ????? xu???t',
                buttonText: 'T???t c???',
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
                        text: '?????t ????? ??n online',
                      ),
                      GridBodyItem(
                        image: '13',
                        text: 'Mua h??? v?? s??? Vietlott',
                      ),
                      GridBodyItem(
                        image: '14',
                        text: '??i b??? c??ng MoMo',
                      ),
                      GridBodyItem(
                        image: '15',
                        text: 'Y??u c???u chuy???n ti???n',
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
                title: 'Danh m???c d???ch v???',
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
                      text: 'Chuy???n nh???n',
                    ),
                    ServiceItem(
                      image: '17',
                      text: 'Thanh to??n',
                    ),
                    ServiceItem(
                      image: '18',
                      text: 'Ti???n ??ch vi???n th??ng',
                    ),
                    ServiceItem(
                      image: '19',
                      text: 'T??i ch??nh',
                    ),
                    ServiceItem(
                      image: '20',
                      text: 'D???ch v???',
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
