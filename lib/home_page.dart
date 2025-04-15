import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('安心防骗助手'),
        // actions: [
        //   IconButton(icon: Icon(Icons.location_on), onPressed: () {}),
        //   IconButton(icon: Icon(Icons.image), onPressed: () {}),
        //   IconButton(icon: Icon(Icons.contact_phone), onPressed: () {}),
        // ],
      ),
      body: Column(
        children: [
          // 宣传图
          Container(
            height: 200,
            color: Colors.blue[200],
            child: Center(child: Text('宣传图')),
          ),

          // 功能按钮区
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.blue[100],
                  height: 80,
                  child: Center(child: Text('开启电话预警')),
                ),
                Container(
                  color: Colors.blue[300],
                  height: 80,
                  child: Center(child: Text('开启短信预警')),
                ),
                Container(
                  color: Colors.blue[500],
                  height: 80,
                  child: Center(child: Text('一键报警/黑名单')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
