import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitchen_padawan/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:kitchen_padawan/features/auth/presentation/view/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Вход')),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          switch (state) {
            case Fail():
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
              setState(() {
                loading = false;
              });
            case Loading():
              setState(() {
                loading = true;
              });
            case Success():
              setState(() {
                loading = false;
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            default:
              break;
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),

              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Пароль'),
                obscureText: true,
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed:
                    loading
                        ? null
                        : () {
                          final email = _emailController.text;
                          final password = _passwordController.text;
                          context.read<AuthBloc>().add(
                            AuthEvent.signInWithEmail(
                              email: email,
                              password: password,
                            ),
                          );
                        },
                child: Text('Войти'),
              ),
              TextButton(
                child: const Text('Нет аккаунта?'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
