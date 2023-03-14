import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:date_format/date_format.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "동의 모바일",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(213, 213, 213, 1.0),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Color.fromRGBO(36, 87, 189, 1.0),
            leading: Image.asset('assets/images/deulogo.png', height:10), // 이미지 경로 설정

            title: const Text("모바일ID",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                height: 2
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
            iconTheme: const IconThemeData(
              size: 50,//change size on your need
              color: Colors.blueAccent,//change color on your need
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 220,
              margin: EdgeInsets.only(top:30,left:15,right: 15),
              //padding: EdgeInsets.only(top:30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 5.0,
                    offset: Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/deuImage.png',width: 110),
                      Image.asset('assets/images/qrCode.png', width: 125),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text (
                        '',
                      ),
                      TimerBuilder.periodic(
                        const Duration(seconds: 1),
                        builder: (context) {
                          return Text(
                            formatDate(DateTime.now(), [hh, ':', nn, ':', ss]),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const Divider(
                    height: 12,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const[
                      Text(' s777777003',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.indigo,
                        ),
                      ),
                      Text('       ZL\n'+'특별열람증      ',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),
            Container(
              height: 220,
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(top:40,left:15,right: 15, bottom: 29),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: GridView.count(
                crossAxisCount: 3, // 칸 수
                physics: FixedExtentScrollPhysics(),
                mainAxisSpacing: 0, // 아이템들의 수직 간격
                crossAxisSpacing: 30, // 아이템들의 수평 간격

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon1.png',width: 90),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon2.png',width: 100),
                    ],
                  ),
                  // 다른 아이콘 추가 가능
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon3.png',width: 80),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon4.png',width: 90),
                    ],
                  ),
                  // 다른 아이콘 추가 가능
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon5.png',width: 100),
                    ],
                  ),
                ],
              ),
            ),

            BottomNavigationBar (
              type: BottomNavigationBarType.fixed,
              iconSize: 40,
              items: const[
                BottomNavigationBarItem(
                    icon: Icon(Icons.phone_iphone, color: Colors.black),
                    label: "모바일ID"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.restaurant_menu, color: Colors.black),
                    label: "D-Food"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet, color: Colors.amber),
                    label: "D-Pay"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu_book, color: Colors.amber),
                    label: "좌석배정"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings, color: Colors.black),
                    label: "환경설정"
                ),
              ],
            ),
          ],
        ),
        endDrawer: Drawer(
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
