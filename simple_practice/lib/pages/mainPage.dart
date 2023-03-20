import 'package:flutter/material.dart';
import 'package:simple_practice/pages/InformPage.dart';
import 'package:simple_practice/pages/dormiryPage.dart';
import 'package:simple_practice/pages/qrCodePage.dart';
import 'package:simple_practice/pages/restaurantPage.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:date_format/date_format.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
            leading: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('assets/images/deulogo.png',height: 45),
                ],
              ),
            ), // 이미지 경로 설정
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
                  InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon1.png',width: 90),
                        ],
                      ),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InformPage()
                            )
                        );
                      }
                  ),
                  InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/icon2.png',width: 100),
                      ],
                    ),
                    onTap: () async{
                      final url = Uri.parse(
                        'https://lib.deu.ac.kr/',
                      );
                      if (await canLaunchUrl(url)) {
                        launchUrl(url);
                      } else {
                        print("Can't launch $url");
                      }
                    }, //tra
                  ),
                  // 다른 아이콘 추가 가능
                  InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon3.png',width: 80),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const QrCodePage()
                            )
                        );
                      }
                  ),
                  InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon4.png',width: 100),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DormiryPage()
                            )
                        );
                      }
                  ),
                  // 다른 아이콘 추가 가능
                  InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon5.png',width: 100),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RestaurantPage()
                            )
                        );
                      }
                  ),
                  InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon6.jpg',width: 65),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const QrCodePage()
                            )
                        );
                      }
                  ),
                ],
              ),
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