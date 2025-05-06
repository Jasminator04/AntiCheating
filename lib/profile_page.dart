import 'package:flutter/material.dart';
import 'pages/settings_page.dart';
import 'pages/feedback_page.dart';
import 'pages/report_page.dart';
import 'pages/notification_page.dart';
import 'pages/about_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('个人中心'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          SizedBox(height: 30),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
          ),
          SizedBox(height: 10),
          Center(child: Text('用户名: 张三', style: TextStyle(fontSize: 18))),
          Center(child: Text('手机号: 123-4567-8901', style: TextStyle(fontSize: 16, color: Colors.grey))),
          SizedBox(height: 20),
          Divider(),

          // 实名认证状态
          // ListTile(
          //   leading: Icon(Icons.verified_user, color: Colors.blue),
          //   title: Text('实名认证'),
          //   subtitle: Text('已认证'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   onTap: () {
          //     // 跳转到实名认证详情
          //   },
          // ),

          // 安全等级
          ListTile(
            leading: Icon(Icons.security, color: Colors.green),
            title: Text('账户安全等级'),
            subtitle: Text('中等 · 建议绑定微信号'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // 跳转到安全设置页面
            },
          ),

          Divider(),

          // 举报记录
          ListTile(
            leading: Icon(Icons.report, color: Colors.red),
            title: Text('我的举报'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (_) => ReportPage()));
},
          ),

          // 消息通知
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.orange),
            title: Text('通知中心'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (_) => NotificationPage()));
},
          ),

          // // 案例库
          // ListTile(
          //   leading: Icon(Icons.menu_book, color: Colors.indigo),
          //   title: Text('诈骗案例库'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   onTap: () {
          //     // 跳转到案例学习页
          //   },
          // ),

          // // 黑名单管理
          // ListTile(
          //   leading: Icon(Icons.block, color: Colors.grey),
          //   title: Text('黑名单管理'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   onTap: () {
          //     // 跳转到黑名单管理页
          //   },
          // ),

          Divider(),

          // 设置
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('设置'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => SettingsPage()));
            },
          ),

          // 关于我们
          ListTile(
            leading: Icon(Icons.info),
            title: Text('关于我们'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (_) => AboutPage()));
},
          ),

          // 客服与反馈
          ListTile(
            leading: Icon(Icons.headset_mic),
            title: Text('客服与反馈'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (_) => FeedbackPage()));
},

          ),

          // 退出登录
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('退出登录'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // 添加退出登录逻辑
            },
          ),
        ],
      ),
    );
  }
}
