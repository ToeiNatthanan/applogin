import 'package:applogin/screen/login.dart';
import 'package:applogin/screen/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register/Login"),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                    "/Users/natthanan/Desktop/tmp/applogin/assets/images/logo.png"),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    label: Text("สร้างบัญชีผู้ใช้",
                        style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }));
                    },
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.login),
                    label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }));
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
