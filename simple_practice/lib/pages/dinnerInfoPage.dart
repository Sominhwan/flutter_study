
import 'package:flutter/material.dart';
import '../main.dart';

class DinnerInfoPage extends StatefulWidget {
  const DinnerInfoPage({Key? key}) : super(key: key);

  @override
  DPayInfo createState() => DPayInfo();
}

class DPayInfo extends State<DinnerInfoPage>{
  List<String> _toggleList = ['후불 정산 내역', 'D-Pay 사용내역'];
  List<bool> _isSelected = [false, false];

  Widget firstScreen(){
    return  Container(
      //padding: EdgeInsets.all(10),
      height: 35,
      margin: EdgeInsets.all(22),
      child: ToggleButtons(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        fillColor: Colors.blue,
        selectedColor: Colors.white,
        isSelected: [],
        children: _toggleList.map((String value) {
          return Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Text(
              value,
              style: TextStyle(fontSize: 13),
            ),
          );
        }).toList(),
      ),
    );
  }
  Widget secondScreen(){
    return Container(
      child: Center(
        child: Text("화면2"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(242, 242, 242, 100),
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
            title: const Text("식수 사용내역",
              style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
               height: 2
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(Icons.close,color: Colors.blueAccent,size: 45), // 검색 아이콘 생성
                  onPressed: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyApp()));
                    });
                  },
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0.0,
          ),
        ),
        body: Column(
          children: [
          Container(
            //padding: EdgeInsets.all(10),
            height: 35,
            margin: EdgeInsets.all(22),
            child: ToggleButtons(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              fillColor: Colors.blue,
              selectedColor: Colors.white,
              children: _toggleList.map((String value) {
                return Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 13),
                  ),
                );
              }).toList(),
              isSelected: _isSelected,
              onPressed: (index) {
                setState(() {
                  _isSelected[index] = !_isSelected[index];
                  if(_isSelected[0]){
                    _isSelected[1] = false;

                  }else if(_isSelected[1]){
                    _isSelected[0] = false;
                    Navigator.pushNamed(context,'firstScreen()' );
                  }
                });
              },
            ),
          ),
          ],
        ),
    );
  }
}