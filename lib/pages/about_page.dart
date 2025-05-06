import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('关于我们'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Icon(Icons.shield, size: 80, color: Colors.deepPurple),
                  SizedBox(height: 10),
                  Text(
                    '安心防骗助手',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '版本号 1.0.0',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              '产品简介',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '安心防骗助手是一款致力于提升用户防诈骗意识的移动应用。'
              '我们通过案例库、风险预警和智能识别技术，为用户提供全方位的防骗保护。',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '联系我们',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('邮箱：support@example.com'),
            Text('客服电话：123-4567-8901'),
            Text('微信客服：123456789'),
            Spacer(),
            Center(
              child: Text(
                '© 2025 安心防骗助手团队',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
