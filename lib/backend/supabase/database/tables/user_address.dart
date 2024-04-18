import '../database.dart';

class UserAddressTable extends SupabaseTable<UserAddressRow> {
  @override
  String get tableName => 'userAddress';

  @override
  UserAddressRow createRow(Map<String, dynamic> data) => UserAddressRow(data);
}

class UserAddressRow extends SupabaseDataRow {
  UserAddressRow(super.data);

  @override
  SupabaseTable get table => UserAddressTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get location => getField<String>('location')!;
  set location(String value) => setField<String>('location', value);

  double get lat => getField<double>('lat')!;
  set lat(double value) => setField<double>('lat', value);

  double get lng => getField<double>('lng')!;
  set lng(double value) => setField<double>('lng', value);
}
