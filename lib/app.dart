import 'package:flutter/material.dart';
import 'features/auth/presentation/view/screens/auth_screen.dart';
import 'features/recipes/presentation/view/screens/home_screen.dart';
import 'features/recipes/presentation/view/screens/recipe_manager_screen.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Кухонный помощник',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => AuthScreen(),
        '/home': (context) => HomeScreen(),
        '/recipes': (context) => RecipeManagerScreen(),
        '/voice-mode': (context) => RecipeManagerScreen(), // Временная заглушка
      },
    );
  }
}