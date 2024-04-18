import '../database.dart';

class OrderTable extends SupabaseTable<OrderRow> {
  @override
  String get tableName => 'order';

  @override
  OrderRow createRow(Map<String, dynamic> data) => OrderRow(data);
}

class OrderRow extends SupabaseDataRow {
  OrderRow(super.data);

  @override
  SupabaseTable get table => OrderTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('createdAt')!;
  set createdAt(DateTime value) => setField<DateTime>('createdAt', value);

  String get sellerId => getField<String>('sellerId')!;
  set sellerId(String value) => setField<String>('sellerId', value);

  int get orderTotal => getField<int>('orderTotal')!;
  set orderTotal(int value) => setField<int>('orderTotal', value);

  String get stripeTransactionId => getField<String>('stripeTransactionId')!;
  set stripeTransactionId(String value) =>
      setField<String>('stripeTransactionId', value);

  DateTime get collectionDate => getField<DateTime>('collectionDate')!;
  set collectionDate(DateTime value) =>
      setField<DateTime>('collectionDate', value);

  int get collectionAvailabilityId =>
      getField<int>('collectionAvailabilityId')!;
  set collectionAvailabilityId(int value) =>
      setField<int>('collectionAvailabilityId', value);

  bool get seen => getField<bool>('seen')!;
  set seen(bool value) => setField<bool>('seen', value);

  String get buyerEmail => getField<String>('buyerEmail')!;
  set buyerEmail(String value) => setField<String>('buyerEmail', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String get collectionAddress => getField<String>('collectionAddress')!;
  set collectionAddress(String value) =>
      setField<String>('collectionAddress', value);
}
