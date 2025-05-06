import 'package:flutter/material.dart';

class BlacklistPage extends StatefulWidget {
  @override
  _BlacklistPageState createState() => _BlacklistPageState();
}

class _BlacklistPageState extends State<BlacklistPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _blacklist = []; // 用来存储黑名单号码

  // 添加号码到黑名单
  void _addToBlacklist() {
    setState(() {
      _blacklist.add(_controller.text); // 将输入的号码添加到黑名单
      _controller.clear(); // 清空输入框
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('黑名单'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 输入框和按钮
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: '输入黑名单号码',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addToBlacklist,
              child: Text('添加到黑名单'),
            ),
            SizedBox(height: 20),
            // 黑名单号码列表
            Text(
              '黑名单号码:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _blacklist.isEmpty
                ? Text('暂无黑名单号码')
                : Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _blacklist.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(_blacklist[index]),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
