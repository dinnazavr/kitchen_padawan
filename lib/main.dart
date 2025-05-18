import 'package:flutter/material.dart';
import 'package:kitchen_padawan/features/auth/presentation/auth_provider.dart';
import 'package:kitchen_padawan/features/auth/presentation/view/screens/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://wlexlssodjomwbckjagp.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndsZXhsc3NvZGpvbXdiY2tqYWdwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc1NzM1MzIsImV4cCI6MjA2MzE0OTUzMn0.60XRZs-bx2JF8Vko1dm-LT8o9OrD1YFvbKZi7jeHTHY',
  );

  runApp(AuthProvider(child: MaterialApp(home: LoginScreen())));
}
