import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  // 模拟举报记录数据
  final List<Map<String, String>> reports = [
    {
      'title': '疑似冒充银行短信',
      'date': '2025-04-10',
      'status': '已处理',
    },
    {
      'title': '陌生来电要求转账',
      'date': '2025-03-28',
      'status': '处理中',
    },
    {
      'title': '虚假中奖信息',
      'date': '2025-02-15',
      'status': '已驳回',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的举报'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: reports.length,
        itemBuilder: (context, index) {
          final report = reports[index];
          return ListTile(
            leading: Icon(Icons.report, color: Colors.red),
            title: Text(report['title'] ?? ''),
            subtitle: Text('日期：${report['date']}'),
            trailing: Text(
              report['status'] ?? '',
              style: TextStyle(
                color: report['status'] == '已处理'
                    ? Colors.green
                    : (report['status'] == '处理中' ? Colors.orange : Colors.grey),
              ),
            ),
            onTap: () {
              // TODO: 可跳转举报详情页面
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text('举报详情'),
                  content: Text('标题：${report['title']}\n状态：${report['status']}\n日期：${report['date']}'),
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
