import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  // 模拟通知数据
  final List<Map<String, String>> notifications = [
    {
      'title': '账户安全提醒',
      'content': '建议您绑定微信以提升账号安全等级。',
      'date': '2025-04-30',
    },
    {
      'title': '举报反馈',
      'content': '您举报的“陌生来电要求转账”已被处理，谢谢您的支持！',
      'date': '2025-04-25',
    },
    {
      'title': '防诈骗提示',
      'content': '近期有冒充银行客服的诈骗短信，请提高警惕。',
      'date': '2025-04-22',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通知中心'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.separated(
        itemCount: notifications.length,
        separatorBuilder: (_, __) => Divider(height: 1),
        itemBuilder: (context, index) {
          final notice = notifications[index];
          return ListTile(
            leading: Icon(Icons.notifications_active, color: Colors.orange),
            title: Text(notice['title'] ?? ''),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notice['content'] ?? ''),
                SizedBox(height: 4),
                Text(
                  notice['date'] ?? '',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            isThreeLine: true,
            onTap: () {
              // 可选择添加通知详情弹窗
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text(notice['title'] ?? ''),
                  content: Text(notice['content'] ?? ''),
                  actions: [
                    TextButton(onPressed: () => Navigator.pop(context), child: Text('关闭')),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
