// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'favorite_entity.dart';

class FavoriteEntityMapper extends ClassMapperBase<FavoriteEntity> {
  FavoriteEntityMapper._();

  static FavoriteEntityMapper? _instance;
  static FavoriteEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FavoriteEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FavoriteEntity';

  static String _$id(FavoriteEntity v) => v.id;
  static const Field<FavoriteEntity, String> _f$id = Field('id', _$id);
  static String _$slug(FavoriteEntity v) => v.slug;
  static const Field<FavoriteEntity, String> _f$slug = Field('slug', _$slug);
  static String _$title(FavoriteEntity v) => v.title;
  static const Field<FavoriteEntity, String> _f$title = Field('title', _$title);
  static DateTime _$publishedAt(FavoriteEntity v) => v.publishedAt;
  static const Field<FavoriteEntity, DateTime> _f$publishedAt =
      Field('publishedAt', _$publishedAt, key: 'published_at');
  static String _$ownerUsername(FavoriteEntity v) => v.ownerUsername;
  static const Field<FavoriteEntity, String> _f$ownerUsername =
      Field('ownerUsername', _$ownerUsername, key: 'owner_username');

  @override
  final MappableFields<FavoriteEntity> fields = const {
    #id: _f$id,
    #slug: _f$slug,
    #title: _f$title,
    #publishedAt: _f$publishedAt,
    #ownerUsername: _f$ownerUsername,
  };

  static FavoriteEntity _instantiate(DecodingData data) {
    return FavoriteEntity(
        id: data.dec(_f$id),
        slug: data.dec(_f$slug),
        title: data.dec(_f$title),
        publishedAt: data.dec(_f$publishedAt),
        ownerUsername: data.dec(_f$ownerUsername));
  }

  @override
  final Function instantiate = _instantiate;

  static FavoriteEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FavoriteEntity>(map);
  }

  static FavoriteEntity fromJson(String json) {
    return ensureInitialized().decodeJson<FavoriteEntity>(json);
  }
}

mixin FavoriteEntityMappable {
  String toJson() {
    return FavoriteEntityMapper.ensureInitialized()
        .encodeJson<FavoriteEntity>(this as FavoriteEntity);
  }

  Map<String, dynamic> toMap() {
    return FavoriteEntityMapper.ensureInitialized()
        .encodeMap<FavoriteEntity>(this as FavoriteEntity);
  }

  FavoriteEntityCopyWith<FavoriteEntity, FavoriteEntity, FavoriteEntity>
      get copyWith => _FavoriteEntityCopyWithImpl(
          this as FavoriteEntity, $identity, $identity);
  @override
  String toString() {
    return FavoriteEntityMapper.ensureInitialized()
        .stringifyValue(this as FavoriteEntity);
  }

  @override
  bool operator ==(Object other) {
    return FavoriteEntityMapper.ensureInitialized()
        .equalsValue(this as FavoriteEntity, other);
  }

  @override
  int get hashCode {
    return FavoriteEntityMapper.ensureInitialized()
        .hashValue(this as FavoriteEntity);
  }
}

extension FavoriteEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FavoriteEntity, $Out> {
  FavoriteEntityCopyWith<$R, FavoriteEntity, $Out> get $asFavoriteEntity =>
      $base.as((v, t, t2) => _FavoriteEntityCopyWithImpl(v, t, t2));
}

abstract class FavoriteEntityCopyWith<$R, $In extends FavoriteEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? slug,
      String? title,
      DateTime? publishedAt,
      String? ownerUsername});
  FavoriteEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FavoriteEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FavoriteEntity, $Out>
    implements FavoriteEntityCopyWith<$R, FavoriteEntity, $Out> {
  _FavoriteEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FavoriteEntity> $mapper =
      FavoriteEntityMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? slug,
          String? title,
          DateTime? publishedAt,
          String? ownerUsername}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (slug != null) #slug: slug,
        if (title != null) #title: title,
        if (publishedAt != null) #publishedAt: publishedAt,
        if (ownerUsername != null) #ownerUsername: ownerUsername
      }));
  @override
  FavoriteEntity $make(CopyWithData data) => FavoriteEntity(
      id: data.get(#id, or: $value.id),
      slug: data.get(#slug, or: $value.slug),
      title: data.get(#title, or: $value.title),
      publishedAt: data.get(#publishedAt, or: $value.publishedAt),
      ownerUsername: data.get(#ownerUsername, or: $value.ownerUsername));

  @override
  FavoriteEntityCopyWith<$R2, FavoriteEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FavoriteEntityCopyWithImpl($value, $cast, t);
}
