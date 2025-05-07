import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  final bool isLogin;
  const AuthScreen({super.key, required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isLogin ? 'Вход' : 'Регистрация')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Имя пользователя')),
            const TextField(
              decoration: InputDecoration(labelText: 'Пароль'),
              obscureText: true,
            ),
            if (!isLogin)
              const TextField(
                decoration: InputDecoration(labelText: 'Номер телефона'),
                keyboardType: TextInputType.phone,
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: Text(isLogin ? 'Войти' : 'Зарегистрироваться'),
              onPressed: () {},
            ),
            if (isLogin)
              TextButton(
                child: const Text('Нет аккаунта?'),
                onPressed: () {},
              ),
            if (!isLogin)
              TextButton(
                child: const Text('Есть аккаунт?'),
                onPressed: () {},
              ),
          ],
        ),
      ),
    );
  }
}