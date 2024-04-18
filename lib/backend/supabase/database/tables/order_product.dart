import '../database.dart';

class OrderProductTable extends SupabaseTable<OrderProductRow> {
  @override
  String get tableName => 'orderProduct';

  @override
  OrderProductRow createRow(Map<String, dynamic> data) => OrderProductRow(data);
}

class OrderProductRow extends SupabaseDataRow {
  OrderProductRow(super.data);

  @override
  SupabaseTable get table => OrderProductTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get orderId => getField<int>('orderId')!;
  set orderId(int value) => setField<int>('orderId', value);

  int get productId => getField<int>('productId')!;
  set productId(int value) => setField<int>('productId', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);
}
