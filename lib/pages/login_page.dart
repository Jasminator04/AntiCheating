import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // 这里可以添加实际的身份验证逻辑
    if (username == 'admin' && password == '1234') {
      // 跳转到主页面
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // 弹出错误提示
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('用户名或密码错误')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: '用户名'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: '密码'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('登录'),
            ),
          ],
        ),
      ),
    );
  }
}
