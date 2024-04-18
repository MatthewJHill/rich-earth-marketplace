import '../database.dart';

class AddressAvailabilityTable extends SupabaseTable<AddressAvailabilityRow> {
  @override
  String get tableName => 'addressAvailability';

  @override
  AddressAvailabilityRow createRow(Map<String, dynamic> data) =>
      AddressAvailabilityRow(data);
}

class AddressAvailabilityRow extends SupabaseDataRow {
  AddressAvailabilityRow(super.data);

  @override
  SupabaseTable get table => AddressAvailabilityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('createdAt')!;
  set createdAt(DateTime value) => setField<DateTime>('createdAt', value);

  int get dayOfWeek => getField<int>('dayOfWeek')!;
  set dayOfWeek(int value) => setField<int>('dayOfWeek', value);

  String get phaseOfDay => getField<String>('phaseOfDay')!;
  set phaseOfDay(String value) => setField<String>('phaseOfDay', value);

  PostgresTime get fromTime => getField<PostgresTime>('fromTime')!;
  set fromTime(PostgresTime value) => setField<PostgresTime>('fromTime', value);

  PostgresTime get toTime => getField<PostgresTime>('toTime')!;
  set toTime(PostgresTime value) => setField<PostgresTime>('toTime', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get userAddressId => getField<String>('userAddressId')!;
  set userAddressId(String value) => setField<String>('userAddressId', value);
}
