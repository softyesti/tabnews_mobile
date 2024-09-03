// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'news_filter_enum.dart';

class NewsFilterEnumMapper extends EnumMapper<NewsFilterEnum> {
  NewsFilterEnumMapper._();

  static NewsFilterEnumMapper? _instance;
  static NewsFilterEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NewsFilterEnumMapper._());
    }
    return _instance!;
  }

  static NewsFilterEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NewsFilterEnum decode(dynamic value) {
    switch (value) {
      case 'old':
        return NewsFilterEnum.old;
      case 'recent':
        return NewsFilterEnum.recent;
      case 'relevant':
        return NewsFilterEnum.relevant;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NewsFilterEnum self) {
    switch (self) {
      case NewsFilterEnum.old:
        return 'old';
      case NewsFilterEnum.recent:
        return 'recent';
      case NewsFilterEnum.relevant:
        return 'relevant';
    }
  }
}

extension NewsFilterEnumMapperExtension on NewsFilterEnum {
  String toValue() {
    NewsFilterEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NewsFilterEnum>(this) as String;
  }
}
