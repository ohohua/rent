// 引入基础库
import 'package:flutter/material.dart';
import 'package:rent/pages/home/tab_index/tab_index.dart';
// 引入自定义组件
import 'package:rent/widgets/page_content.dart';

// 1.需要准备 4 个 tab内容区（tabView）
List<Widget> tabViewList = [
  const TabIndex(),
  const PageContent(name: '首页'),
  const PageContent(name: '搜索'),
  const PageContent(name: '咨询'),
  const PageContent(name: '我的'),
];

// 2.需要准备 4 个 BottomNavigationBarItem
List<BottomNavigationBarItem> barItemList = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
  const BottomNavigationBarItem(icon: Icon(Icons.search), label: '搜索'),
  const BottomNavigationBarItem(icon: Icon(Icons.info), label: '咨询'),
  const BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '我的'),
];

// 编写无状态组件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        onTap: onItemTapped,
      ),
    );
  }
}
