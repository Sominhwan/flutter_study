import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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