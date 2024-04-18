import '../database.dart';

class ProductTable extends SupabaseTable<ProductRow> {
  @override
  String get tableName => 'product';

  @override
  ProductRow createRow(Map<String, dynamic> data) => ProductRow(data);
}

class ProductRow extends SupabaseDataRow {
  ProductRow(super.data);

  @override
  SupabaseTable get table => ProductTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('createdAt')!;
  set createdAt(DateTime value) => setField<DateTime>('createdAt', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  double get weight => getField<double>('weight')!;
  set weight(double value) => setField<double>('weight', value);

  int get price => getField<int>('price')!;
  set price(int value) => setField<int>('price', value);

  String? get stripeProductId => getField<String>('stripeProductId');
  set stripeProductId(String? value) =>
      setField<String>('stripeProductId', value);

  String? get picUrl => getField<String>('picUrl');
  set picUrl(String? value) => setField<String>('picUrl', value);

  int get amount => getField<int>('amount')!;
  set amount(int value) => setField<int>('amount', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);
}
