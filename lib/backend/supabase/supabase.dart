import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://ugxifcqjkqtcpjrfvkgv.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVneGlmY3Fqa3F0Y3BqcmZ2a2d2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDA0NzE1MTUsImV4cCI6MjAxNjA0NzUxNX0.eru_rVR8WUbdwNTDlupBVvKwaT7JxDYB5-N_NlYNYNk';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
