import 'package:flutter/material.dart';

class DynamicPage extends StatelessWidget {
  // 模拟文章列表数据（后续可替换为后端返回）
  final List<Map<String, String>> articleList = [
    {
      'title': '警惕！最新冒充快递诈骗手段曝光',
      'subtitle': '冒充客服以退款为由，引导用户转账……',
      'time': '2025-04-20',
      'source': '公安部网安局',
    },
    {
      'title': '这些常见诈骗套路你都知道吗？',
      'subtitle': '以“中奖”“客服”“办贷款”为由实施诈骗……',
      'time': '2025-04-18',
      'source': '防诈日报',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('防诈动态'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: articleList.isEmpty
          ? _buildEmptyState()
          : ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: articleList.length,
              itemBuilder: (context, index) {
                final article = articleList[index];
                return _buildArticleCard(article);
              },
            ),
    );
  }

  Widget _buildArticleCard(Map<String, String> article) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {
          // 后续跳转文章详情页
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article['title']!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 6),
              Text(
                article['subtitle']!,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    article['source']!,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    article['time']!,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 无内容占位视图
  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.article_outlined, size: 80, color: Colors.grey[400]),
          SizedBox(height: 16),
          Text('暂无推送文章', style: TextStyle(fontSize: 18, color: Colors.grey)),
          SizedBox(height: 8),
          Text('请稍后再试或检查网络连接', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
