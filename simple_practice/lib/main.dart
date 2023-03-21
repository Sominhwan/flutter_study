import 'package:flutter/material.dart';
import 'package:simple_practice/pages/d_foodPage.dart';
import 'package:simple_practice/pages/dinnerInfoPage.dart';
import 'package:simple_practice/pages/mainPage.dart';
import 'package:simple_practice/pages/seatingPage.dart';
import 'package:simple_practice/pages/settingPage.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:date_format/date_format.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
// 탭을 이동할 때 쓸 변수!
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 40, fontWeight: FontWeight.bold);


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:((){
          if( _selectedIndex == 0) {
            return const MainPage();
          } else if(_selectedIndex == 1){
             return DFoodPage();
          } else if(_selectedIndex == 2){
            return DinnerInfoPage();
          } else if(_selectedIndex == 3){
             return SeatingPage();
          } else if(_selectedIndex == 4){
             return const SettingPage();
          }
          })(),
        ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_iphone, color: Colors.black,size: 34),
            label: "모바일ID",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu, color: Colors.black),
              label: "D-Food",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet, color: Colors.amber),
            label: "D-Pay",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book, color: Colors.amber),
            label: "좌석배정",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black,),
            label: "환경설정",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // 아랫줄을 쓰지 않아도 탭이 4개 미만인 경우 기본으로 설정된다.
        type: BottomNavigationBarType.fixed,

        //selectedItemColor: Colors.amber[800],
        //unselectedItemColor: Colors.blue,
        iconSize: 35,
        unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        // backgroundColor: Colors.black,
      ),
    );
  }
}