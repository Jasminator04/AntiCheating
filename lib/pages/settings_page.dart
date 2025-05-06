import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('设置'),
      backgroundColor: Colors.deepPurple,
    ),
    body: ListView(
      children: [
        ListTile(
          leading: Icon(Icons.person),
          title: Text('账号设置'),
          onTap: () {
            // TODO: 跳转到账号设置页面
          },
        ),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text('隐私与安全'),
          onTap: () {
            // TODO: 跳转到隐私页面
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('关于应用'),
          onTap: () {
            // TODO: 跳转到关于页面
          },
        ),
      ],
    ),
  );
}
}