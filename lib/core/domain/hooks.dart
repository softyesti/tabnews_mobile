import 'package:dart_mappable/dart_mappable.dart';

class NullToListHook extends MappingHook {
  const NullToListHook();

  @override
  Object? beforeDecode(Object? value) {
    if (value == null) return super.beforeDecode([]);
    return super.beforeDecode(value);
  }
}
