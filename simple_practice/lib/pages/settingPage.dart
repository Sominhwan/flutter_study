import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool status = false;
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.black87,
            unselectedItemColor: Colors.black87,
            unselectedLabelStyle: TextStyle(fontSize: 14)
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(213, 213, 213, 1.0),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Color.fromRGBO(36, 87, 189, 1.0),
              leading: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/deulogo.png',height: 45),
                  ],
                ),
              ),

            title: const Text("설정",
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
             child : Row(
              children : [
                  Text('로그인정보',style: TextStyle(fontSize: 20, color: Colors.black38)),
              ]
            ),
              height: 60, padding: EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12))),
          ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 35),
                    child: Text('s777777003',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold)),
                  ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 215, top: 3),
                          child: Text('ZL',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 10),
                          child: Text('특별열람증',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                ],
              ),
              height: 70, //padding: EdgeInsets.only(left: 20, top:10)
              color: Colors.white,
             // decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12)))
            ),
            Container(
              child : Row(
                  children : [
                    Text('프로그램 정보',style: TextStyle(fontSize: 20, color: Colors.black38)),
                  ]
              ),
              height: 60, padding: EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12),top: BorderSide(color: Colors.black12))),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text('현재버전',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold)),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 235, top: 25),
                        child: Text('1.4.6',style: TextStyle(fontSize: 20, color: Colors.black)),
                      )
                    ],
                  ),
                ],
              ),
              height: 70, //padding: EdgeInsets.only(left: 20, top:10)
              color: Colors.white,
            ),
            Container(
              child : Row(
                  children : [
                    Text('생체인증 사용 설정',style: TextStyle(fontSize: 20, color: Colors.black38)),
                  ]
              ),
              height: 60, padding: EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12),top: BorderSide(color: Colors.black12))),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text('지문인증',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold)),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 181,top: 10),
                        child: FlutterSwitch(
                          value: status,
                          width: 100.0,
                          height: 45.0,
                          valueFontSize: 25.0,
                          toggleSize: 40.0,
                          borderRadius: 30.0,
                          padding: 8.0,
                          showOnOff: false,
                          onToggle: (val) {
                            status = false;
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              height: 70, //padding: EdgeInsets.only(left: 20, top:10)
              color: Colors.white,
            ),
          ],
        ),

        endDrawer: Drawer(
          width: 220.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 104,
                margin:EdgeInsets.fromLTRB(0,0, 0, 0),
                child: UserAccountsDrawerHeader(
                  accountName: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('s77777703',style: TextStyle(fontSize: 18,color:Colors.white)),
                      IconButton(
                        icon: Icon(Icons.power_settings_new,size: 38,color: Colors.grey),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () async {

                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.close,size: 38,color: Colors.grey),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          // WidgetsBinding.instance.addPostFrameCallback((_) {
                          //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MainPage()));
                          // });
                          //Navigator.push(context,MaterialPageRoute(builder: (context)=> const MainPage()));
                          //print('x 추가');
                        },
                      ),
                    ],
                  ),
                  accountEmail: Row(
                    children: [],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero)
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.phone_iphone,
                  size: 35,
                  color: Colors.grey[850],
                ),
                title: Text('모바일ID',style: TextStyle(fontSize: 18)),
                dense: true,
                //horizontalTitleGap: 10,
                onTap: () {
                  print('Home is clicked');
                },
                //trailing: Icon(Icons.add),
              ),
              Divider(color: Colors.black87),
              ListTile(
                leading: Icon(
                  Icons.restaurant_menu,
                  size: 35,
                  color: Colors.grey[850],
                ),
                title: Text('D-Food',style: TextStyle(fontSize: 18)),
                dense: true,
                onTap: () {
                  print('Setting is clicked');
                },
                //trailing: Icon(Icons.add),
              ),
              Divider(color: Colors.black87),
              ListTile(
                leading: Icon(
                  Icons.account_balance_wallet,
                  size: 35,
                  color: Colors.orangeAccent,
                ),
                title: Text('D-Pay',style: TextStyle(fontSize: 18)),
                dense: true,
                onTap: () {
                  print('Q&A is clicked');
                },
                //trailing: Icon(Icons.add),
              ),
              Divider(color: Colors.black87),
              ListTile(
                leading: Icon(
                  Icons.menu_book,
                  size: 35,
                  color: Colors.orangeAccent,
                ),
                title: Text('도서관',style: TextStyle(fontSize: 18)),
                dense: true,
                onTap: () {
                  print('Q&A is clicked');
                }, //trailing: Icon(Icons.add),
              ),
              Divider(color: Colors.black87),
              ListTile(
                leading: Icon(
                  Icons.chair_alt,
                  size: 35,
                  color: Colors.black54,
                ),
                title: Text('좌석배정',style: TextStyle(fontSize: 18)),
                dense: true,
                onTap: () {
                  print('Q&A is clicked');
                },
                //trailing: Icon(Icons.add),
              ),
              Divider(color: Colors.black87),
              ListTile(
                leading: Icon(
                  Icons.laptop_windows,
                  size: 35,
                  color: Colors.black54,
                ),
                title: Text('도서관 홈페이지',style: TextStyle(fontSize: 18)),
                dense: true,
                onTap: () async{
                  final url = Uri.parse(
                    'https://lib.deu.ac.kr/',
                  );
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    print("Can't launch $url");
                  }
                }, //trailing: Icon(Icons.add),
              ),
              Divider(color: Colors.black87),
              ListTile(
                leading: Icon(
                  Icons.web,
                  size: 35,
                  color: Colors.blueGrey,
                ),
                title: Text('휴복학신청',style: TextStyle(fontSize: 18)),
                dense: true,
                onTap: () {
                  print('Q&A is clicked');
                }, //trailing: Icon(Icons.add),
              ),
              Divider(color: Colors.black87),
              ListTile(
                leading: Icon(
                  Icons.border_color,
                  size: 35,
                  color: Colors.orangeAccent,
                ),
                title: Text('분실신고',style: TextStyle(fontSize: 18)),
                dense: true,
                onTap: () {
                  print('Q&A is clicked');
                }, //trailing: Icon(Icons.add),
              ),
              Divider(color: Colors.black87),
              ListTile(
                leading: Icon(
                  Icons.feedback,
                  size: 35,
                  color: Colors.blueGrey,
                ),
                title: Text('오류보고',style: TextStyle(fontSize: 18)),
                dense: true,
                onTap: () {
                  print('Q&A is clicked');
                },
                //trailing: Icon(Icons.add),
              ),
              Divider(color: Colors.black87),
              ListTile(
                leading: Icon(
                  Icons.account_balance,
                  size: 35,
                  color: Colors.orangeAccent,
                ),
                title: Text('학생증 체크카드',style: TextStyle(fontSize: 18)),
                dense: true,
                onTap: () {
                  print('Q&A is clicked');
                },
                //trailing: Icon(Icons.add),
              ),
              Divider(color: Colors.black87),
            ],
          ),
        ),
      ),
    );
  }
}