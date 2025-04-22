import 'package:flutter/material.dart';

class DynamicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('防诈动态'),
        backgroundColor: Colors.deepPurple, 
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.article_outlined, size: 80, color: Colors.deepPurple[200]),
            SizedBox(height: 16),
            Text(
              '暂无动态内容',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 8),
            Text(
              '敬请期待防诈骗资讯更新',
              style: TextStyle(fontSize: 14, color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }
}
