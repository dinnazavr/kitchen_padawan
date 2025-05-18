import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:kitchen_padawan/features/auth/data/data_providers/auth_data_provider/auth_data_provider.dart';
import 'package:kitchen_padawan/features/auth/data/data_providers/auth_data_provider/implementations/auth_data_provider_impl.dart';
import 'package:kitchen_padawan/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:kitchen_padawan/features/auth/domain/repositories/auth_repository.dart';
import 'package:kitchen_padawan/features/auth/presentation/bloc/auth_bloc.dart';

class AuthProvider extends StatelessWidget {
  final Widget child;
  const AuthProvider({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthDataProvider>(
      create:
          (context) => AuthDataProviderImpl(supabase: Supabase.instance),
      child: RepositoryProvider<AuthRepository>(
        create:
            (context) => AuthRepositoryImpl(
              authDataProvider: context.read<AuthDataProvider>()),
        child: BlocProvider(
          create:
              (context) =>
                  AuthBloc(authRepository: context.read<AuthRepository>()),
          child: child,
        ),
      ),
    );
  }
}
