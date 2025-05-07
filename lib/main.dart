import 'package:flutter/material.dart';
import 'package:kitchen_padawan/features/auth/presentation/view/screens/auth_screen.dart';
import 'package:kitchen_padawan/features/recipes/presentation/view/screens/recipe_screen.dart';
import 'package:kitchen_padawan/features/recipes/presentation/view/screens/recipes_list_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Голосовой повар',
      home: AuthScreen(isLogin: true),
      routes: {
        '/recipes': (ctx) => const RecipesListScreen(),
        '/recipe': (ctx) => const RecipeScreen(isNew: false),
      },
    );
  }
}