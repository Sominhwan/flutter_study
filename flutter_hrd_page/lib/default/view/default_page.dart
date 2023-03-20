import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hrd_page/check/controller/check_controller.dart';
import 'package:flutter_hrd_page/check/view/check_page.dart';
import 'package:flutter_hrd_page/default/widgets/default_first_item.dart';
import 'package:provider/provider.dart';

import '../widgets/default_second_item.dart';

// 페이지 내부의 상태를 관리하기 위해
// HookWidget
// 사용할 수 있는 Hook
// useState
// useEffect 등이 있다
// Hook 은 bulid 함수 안에 적는다
class DefaultPage extends HookWidget {
  DefaultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final checkController = context.watch<CheckController>();
    List widgetItems = [
          () => DefaultFirstItem(
            checkController.isChecked
          ),
          () => DefaultSecondItem(),
    ];

    final naviIndex = useState(0);
    print("DefaultPage 빌드됨"+ naviIndex.value.toString());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("나의 정보")),
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckPage())
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(Icons.move_to_inbox),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int idx){
          naviIndex.value = idx;
        },
        currentIndex: naviIndex.value,
          items:[
            BottomNavigationBarItem(
              icon:Icon(Icons.account_circle_outlined
              ),
              label: "나의정보"
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.cabin
              ),
              label: "다른정보"
            )
          ]
      ),
      body: SafeArea(
        child: widgetItems[naviIndex.value](),
      ),
    );
  }
}
