import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Color.fromRGBO(36, 87, 189, 1.0),

            leading: Image.asset('assets/images/deulogo.png', height:20 , width:20), // 이미지 경로 설정

            title: Text("모바일ID",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                height: 2.2
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
            iconTheme: IconThemeData(
              size: 55,//change size on your need
              color: Colors.blueAccent,//change color on your need
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              margin: EdgeInsets.only(top:40,left:15,right: 15),
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
                      Image.asset('assets/images/deuImage.png'),
                      Image.asset('assets/images/qrCode.png', width: 200),
                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '',
                      ),
                      Text(
                        '14:24:04',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),

                  Divider(
                    height: 30,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(' s777777003',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text('특별열람증      ',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],

                  ),

                ],
              )

            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.phone_iphone, color: Colors.black),
                    label: "모바일ID"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.restaurant_menu, color: Colors.black),
                    label: "D-Food"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet, color: Colors.black),
                    label: "D-Pay"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu_book, color: Colors.black),
                    label: "좌석배정"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings, color: Colors.black),
                    label: "환경설정"
                ),
              ],
            ),
            Container(
              height: 300,
              margin: EdgeInsets.only(top:60,left:15,right: 15),
              //padding: EdgeInsets.only(top:30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                    '안녕'
                ),
              ),
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
