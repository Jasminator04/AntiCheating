import 'package:flutter/material.dart';

class DynamicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动态'),
      ),
      body: Center(
        child: Text(
          '暂无动态内容',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
