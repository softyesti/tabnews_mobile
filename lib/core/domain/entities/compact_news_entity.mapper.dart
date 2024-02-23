// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'compact_news_entity.dart';

class CompactNewsEntityMapper extends ClassMapperBase<CompactNewsEntity> {
  CompactNewsEntityMapper._();

  static CompactNewsEntityMapper? _instance;
  static CompactNewsEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompactNewsEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CompactNewsEntity';

  static String _$id(CompactNewsEntity v) => v.id;
  static const Field<CompactNewsEntity, String> _f$id = Field('id', _$id);
  static String _$ownerId(CompactNewsEntity v) => v.ownerId;
  static const Field<CompactNewsEntity, String> _f$ownerId =
      Field('ownerId', _$ownerId, key: 'owner_id');
  static String _$slug(CompactNewsEntity v) => v.slug;
  static const Field<CompactNewsEntity, String> _f$slug = Field('slug', _$slug);
  static String _$title(CompactNewsEntity v) => v.title;
  static const Field<CompactNewsEntity, String> _f$title =
      Field('title', _$title);
  static String _$status(CompactNewsEntity v) => v.status;
  static const Field<CompactNewsEntity, String> _f$status =
      Field('status', _$status);
  static String _$createdAt(CompactNewsEntity v) => v.createdAt;
  static const Field<CompactNewsEntity, String> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static String _$updatedAt(CompactNewsEntity v) => v.updatedAt;
  static const Field<CompactNewsEntity, String> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');
  static String _$publishedAt(CompactNewsEntity v) => v.publishedAt;
  static const Field<CompactNewsEntity, String> _f$publishedAt =
      Field('publishedAt', _$publishedAt, key: 'published_at');
  static int _$tabcoins(CompactNewsEntity v) => v.tabcoins;
  static const Field<CompactNewsEntity, int> _f$tabcoins =
      Field('tabcoins', _$tabcoins);
  static int _$tabcoinsCredit(CompactNewsEntity v) => v.tabcoinsCredit;
  static const Field<CompactNewsEntity, int> _f$tabcoinsCredit =
      Field('tabcoinsCredit', _$tabcoinsCredit, key: 'tabcoins_credit');
  static int _$tabcoinsDebit(CompactNewsEntity v) => v.tabcoinsDebit;
  static const Field<CompactNewsEntity, int> _f$tabcoinsDebit =
      Field('tabcoinsDebit', _$tabcoinsDebit, key: 'tabcoins_debit');
  static String _$ownerUsername(CompactNewsEntity v) => v.ownerUsername;
  static const Field<CompactNewsEntity, String> _f$ownerUsername =
      Field('ownerUsername', _$ownerUsername, key: 'owner_username');
  static int _$commentCount(CompactNewsEntity v) => v.commentCount;
  static const Field<CompactNewsEntity, int> _f$commentCount =
      Field('commentCount', _$commentCount, key: 'children_deep_count');

  @override
  final MappableFields<CompactNewsEntity> fields = const {
    #id: _f$id,
    #ownerId: _f$ownerId,
    #slug: _f$slug,
    #title: _f$title,
    #status: _f$status,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #publishedAt: _f$publishedAt,
    #tabcoins: _f$tabcoins,
    #tabcoinsCredit: _f$tabcoinsCredit,
    #tabcoinsDebit: _f$tabcoinsDebit,
    #ownerUsername: _f$ownerUsername,
    #commentCount: _f$commentCount,
  };

  static CompactNewsEntity _instantiate(DecodingData data) {
    return CompactNewsEntity(
        id: data.dec(_f$id),
        ownerId: data.dec(_f$ownerId),
        slug: data.dec(_f$slug),
        title: data.dec(_f$title),
        status: data.dec(_f$status),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        publishedAt: data.dec(_f$publishedAt),
        tabcoins: data.dec(_f$tabcoins),
        tabcoinsCredit: data.dec(_f$tabcoinsCredit),
        tabcoinsDebit: data.dec(_f$tabcoinsDebit),
        ownerUsername: data.dec(_f$ownerUsername),
        commentCount: data.dec(_f$commentCount));
  }

  @override
  final Function instantiate = _instantiate;

  static CompactNewsEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CompactNewsEntity>(map);
  }

  static CompactNewsEntity fromJson(String json) {
    return ensureInitialized().decodeJson<CompactNewsEntity>(json);
  }
}

mixin CompactNewsEntityMappable {
  String toJson() {
    return CompactNewsEntityMapper.ensureInitialized()
        .encodeJson<CompactNewsEntity>(this as CompactNewsEntity);
  }

  Map<String, dynamic> toMap() {
    return CompactNewsEntityMapper.ensureInitialized()
        .encodeMap<CompactNewsEntity>(this as CompactNewsEntity);
  }

  CompactNewsEntityCopyWith<CompactNewsEntity, CompactNewsEntity,
          CompactNewsEntity>
      get copyWith => _CompactNewsEntityCopyWithImpl(
          this as CompactNewsEntity, $identity, $identity);
  @override
  String toString() {
    return CompactNewsEntityMapper.ensureInitialized()
        .stringifyValue(this as CompactNewsEntity);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            CompactNewsEntityMapper.ensureInitialized()
                .isValueEqual(this as CompactNewsEntity, other));
  }

  @override
  int get hashCode {
    return CompactNewsEntityMapper.ensureInitialized()
        .hashValue(this as CompactNewsEntity);
  }
}

extension CompactNewsEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CompactNewsEntity, $Out> {
  CompactNewsEntityCopyWith<$R, CompactNewsEntity, $Out>
      get $asCompactNewsEntity =>
          $base.as((v, t, t2) => _CompactNewsEntityCopyWithImpl(v, t, t2));
}

abstract class CompactNewsEntityCopyWith<$R, $In extends CompactNewsEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? ownerId,
      String? slug,
      String? title,
      String? status,
      String? createdAt,
      String? updatedAt,
      String? publishedAt,
      int? tabcoins,
      int? tabcoinsCredit,
      int? tabcoinsDebit,
      String? ownerUsername,
      int? commentCount});
  CompactNewsEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CompactNewsEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CompactNewsEntity, $Out>
    implements CompactNewsEntityCopyWith<$R, CompactNewsEntity, $Out> {
  _CompactNewsEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CompactNewsEntity> $mapper =
      CompactNewsEntityMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? ownerId,
          String? slug,
          String? title,
          String? status,
          String? createdAt,
          String? updatedAt,
          String? publishedAt,
          int? tabcoins,
          int? tabcoinsCredit,
          int? tabcoinsDebit,
          String? ownerUsername,
          int? commentCount}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (ownerId != null) #ownerId: ownerId,
        if (slug != null) #slug: slug,
        if (title != null) #title: title,
        if (status != null) #status: status,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (publishedAt != null) #publishedAt: publishedAt,
        if (tabcoins != null) #tabcoins: tabcoins,
        if (tabcoinsCredit != null) #tabcoinsCredit: tabcoinsCredit,
        if (tabcoinsDebit != null) #tabcoinsDebit: tabcoinsDebit,
        if (ownerUsername != null) #ownerUsername: ownerUsername,
        if (commentCount != null) #commentCount: commentCount
      }));
  @override
  CompactNewsEntity $make(CopyWithData data) => CompactNewsEntity(
      id: data.get(#id, or: $value.id),
      ownerId: data.get(#ownerId, or: $value.ownerId),
      slug: data.get(#slug, or: $value.slug),
      title: data.get(#title, or: $value.title),
      status: data.get(#status, or: $value.status),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      publishedAt: data.get(#publishedAt, or: $value.publishedAt),
      tabcoins: data.get(#tabcoins, or: $value.tabcoins),
      tabcoinsCredit: data.get(#tabcoinsCredit, or: $value.tabcoinsCredit),
      tabcoinsDebit: data.get(#tabcoinsDebit, or: $value.tabcoinsDebit),
      ownerUsername: data.get(#ownerUsername, or: $value.ownerUsername),
      commentCount: data.get(#commentCount, or: $value.commentCount));

  @override
  CompactNewsEntityCopyWith<$R2, CompactNewsEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CompactNewsEntityCopyWithImpl($value, $cast, t);
}
