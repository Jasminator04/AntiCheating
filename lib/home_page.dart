import 'package:flutter/material.dart';
import 'phone_warning_page.dart'; 
import 'sms_warning_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'blacklist_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('安心防骗助手'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // 顶部宣传图
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/banner.jpg'), // 宣传图路径
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(16),
              color: Colors.black.withOpacity(0.3),
              child: Text(
                '防骗从你我做起\n及时预警，守护财产安全',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),

          SizedBox(height: 16),

          // 功能区标题
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '常用功能',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // 功能按钮区
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildFunctionItem(
                  Icons.phone_forwarded,
                  '电话预警',
                  Colors.orange,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneWarningPage()),
                    );
                  },
                ),
                _buildFunctionItem(
                  Icons.sms_failed,
                  '短信预警',
                  Colors.redAccent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SmsWarningPage()),
                    );
                  },
                ),
                _buildFunctionItem(
                  Icons.report_gmailerrorred,
                  '一键报警',
                  Colors.indigo,
                  onTap: () async {
                    final Uri phoneUri = Uri(scheme: 'tel', path: '110');
                    if (await canLaunchUrl(phoneUri)) {
                      await launchUrl(phoneUri);
                    } else {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('无法拨打电话')));
                    }
                  },
                ),
                // _buildFunctionItem(
                //   Icons.warning_amber,
                //   '诈骗预警',
                //   Colors.green,
                // ),
                _buildFunctionItem(
                  Icons.library_books,
                  '案例学习',
                  Colors.teal,
                ),
                _buildFunctionItem(
                  Icons.block, // 设置图标为“封锁”图标
                  '黑名单', // 设置标签为“黑名单”
                  Colors.grey, // 设置按钮颜色
                  onTap: () {
                    // 点击时跳转到黑名单页面
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BlacklistPage()),
                    );
                  },
                ),

              ],
            ),
          ),

          // 最新预警区域
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '最新预警',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.yellow[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('【高风险】假冒公检法诈骗频发！', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 6),
                Text('已有多人被骗转账，请勿轻信陌生来电。如有疑问请及时拨打官方反诈电话。'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 封装功能按钮
  Widget _buildFunctionItem(IconData icon, String label, Color color, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap, // 点击响应
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: color),
            SizedBox(height: 8),
            Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
