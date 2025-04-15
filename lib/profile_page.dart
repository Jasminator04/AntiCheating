import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('个人中心'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/avatar.png'), // 你可以先用默认图片，后续替换
          ),
          SizedBox(height: 10),
          Text('用户名: 张三', style: TextStyle(fontSize: 18)),
          SizedBox(height: 5),
          Text('手机号: 123-4567-8901', style: TextStyle(fontSize: 16, color: Colors.grey)),

          SizedBox(height: 30),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('设置'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('关于我们'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('退出登录'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
