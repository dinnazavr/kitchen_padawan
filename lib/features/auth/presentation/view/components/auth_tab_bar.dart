import 'package:flutter/material.dart';

class AuthTabBar extends StatelessWidget {
  final TabController controller;
  
  const AuthTabBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
      ),
      child: TabBar(
        controller: controller,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue,
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        tabs: [
          Tab(text: 'Вход'),
          Tab(text: 'Регистрация'),
        ],
      ),
    );
  }
}