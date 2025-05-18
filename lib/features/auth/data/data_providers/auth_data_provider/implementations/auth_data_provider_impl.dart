import 'package:kitchen_padawan/features/auth/data/DTOs/auth_docs_response_dto.dart';
import 'package:kitchen_padawan/features/auth/data/data_providers/auth_data_provider/auth_data_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthDataProviderImpl implements AuthDataProvider {
  final Supabase _supabase;

  AuthDataProviderImpl({required Supabase supabase}) : _supabase = supabase;
  @override
  Future<AuthDocsResponseDto> signInWithEmail({
    required String email,
    required String password,
  }) async {
    final response = await _supabase.client.auth.signInWithPassword(
      email: email,
      password: password,
    );

    final user = response.user;
    if (user == null) {
      throw Exception('Пользователь не найден');
    }

    final userData =
        await Supabase.instance.client
            .from('profiles')
            .select()
            .eq('id', user.id)
            .single();

    return AuthDocsResponseDto(
      id: user.id,
      username: userData['username'],
      email: user.email!,
    );
  }

  @override
  Future<AuthDocsResponseDto> signUpWithEmail({
    required String email,
    required String password,
    required String username,
  }) async {
    final response = await _supabase.client.auth.signUp(
      email: email,
      password: password,
      data: {'username': username},
    );

    final user = response.user;
    if (user == null) {
      throw Exception('Регистрация зафейлена');
    }

    await Supabase.instance.client.from('profiles').insert({
      'id': user.id,
      'username': username,
      'email': email,
    });

    return AuthDocsResponseDto(id: user.id, username: username, email: email);
  }

  @override
  Future<void> signOut() async {
    await _supabase.client.auth.signOut();
  }
}
