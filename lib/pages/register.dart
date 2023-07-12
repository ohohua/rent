// 引入基础库
import 'package:flutter/material.dart';

// 编写无状态组件
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('注册'), backgroundColor: Colors.green),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 20),
            child: TextField(
              obscureText: true,
              cursorColor: Colors.green,
              cursorWidth: 10,
              cursorRadius: Radius.circular(15),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                prefixIconColor: Colors.green,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                label: Text(
                  '用户名',
                  style: TextStyle(color: Colors.green),
                ),
                hintText: '请输入用户名',
                labelStyle: TextStyle(),
                // focusedBorder:
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 20),
            child: TextField(
              obscureText: true,
              cursorColor: Colors.green,
              cursorWidth: 10,
              cursorRadius: Radius.circular(15),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.green,
                suffixIcon: Icon(Icons.remove_red_eye),
                suffixIconColor: Colors.green,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                label: Text(
                  '密码',
                  style: TextStyle(color: Colors.green),
                ),
                hintText: '请输入密码',
                labelStyle: TextStyle(),
                // focusedBorder:
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 20),
            child: TextField(
              obscureText: true,
              cursorColor: Colors.green,
              cursorWidth: 10,
              cursorRadius: Radius.circular(15),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.green,
                suffixIcon: Icon(Icons.remove_red_eye),
                suffixIconColor: Colors.green,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                label: Text(
                  '确认密码',
                  style: TextStyle(color: Colors.green),
                ),
                hintText: '请输入密码',
                labelStyle: TextStyle(),
                // focusedBorder:
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.fromLTRB(100, 20, 100, 20))),
              child: const Text('注册'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('已有账号？'),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                  child: const Text('去登录'))
            ],
          )
        ],
      ),
    );
  }
}
