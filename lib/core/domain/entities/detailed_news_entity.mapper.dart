// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'detailed_news_entity.dart';

class DetailedNewsEntityMapper extends ClassMapperBase<DetailedNewsEntity> {
  DetailedNewsEntityMapper._();

  static DetailedNewsEntityMapper? _instance;
  static DetailedNewsEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DetailedNewsEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DetailedNewsEntity';

  static String _$id(DetailedNewsEntity v) => v.id;
  static const Field<DetailedNewsEntity, String> _f$id = Field('id', _$id);
  static String _$ownerId(DetailedNewsEntity v) => v.ownerId;
  static const Field<DetailedNewsEntity, String> _f$ownerId =
      Field('ownerId', _$ownerId, key: 'owner_id');
  static String _$slug(DetailedNewsEntity v) => v.slug;
  static const Field<DetailedNewsEntity, String> _f$slug =
      Field('slug', _$slug);
  static String _$title(DetailedNewsEntity v) => v.title;
  static const Field<DetailedNewsEntity, String> _f$title =
      Field('title', _$title);
  static String _$body(DetailedNewsEntity v) => v.body;
  static const Field<DetailedNewsEntity, String> _f$body =
      Field('body', _$body);
  static String _$status(DetailedNewsEntity v) => v.status;
  static const Field<DetailedNewsEntity, String> _f$status =
      Field('status', _$status);
  static String _$createdAt(DetailedNewsEntity v) => v.createdAt;
  static const Field<DetailedNewsEntity, String> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static String _$updatedAt(DetailedNewsEntity v) => v.updatedAt;
  static const Field<DetailedNewsEntity, String> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');
  static String _$publishedAt(DetailedNewsEntity v) => v.publishedAt;
  static const Field<DetailedNewsEntity, String> _f$publishedAt =
      Field('publishedAt', _$publishedAt, key: 'published_at');
  static String _$ownerUsername(DetailedNewsEntity v) => v.ownerUsername;
  static const Field<DetailedNewsEntity, String> _f$ownerUsername =
      Field('ownerUsername', _$ownerUsername, key: 'owner_username');
  static int _$tabcoins(DetailedNewsEntity v) => v.tabcoins;
  static const Field<DetailedNewsEntity, int> _f$tabcoins =
      Field('tabcoins', _$tabcoins);
  static int _$tabcoinsCredit(DetailedNewsEntity v) => v.tabcoinsCredit;
  static const Field<DetailedNewsEntity, int> _f$tabcoinsCredit =
      Field('tabcoinsCredit', _$tabcoinsCredit, key: 'tabcoins_credit');
  static int _$tabcoinsDebit(DetailedNewsEntity v) => v.tabcoinsDebit;
  static const Field<DetailedNewsEntity, int> _f$tabcoinsDebit =
      Field('tabcoinsDebit', _$tabcoinsDebit, key: 'tabcoins_debit');
  static int _$commentCount(DetailedNewsEntity v) => v.commentCount;
  static const Field<DetailedNewsEntity, int> _f$commentCount =
      Field('commentCount', _$commentCount, key: 'children_deep_count');

  @override
  final MappableFields<DetailedNewsEntity> fields = const {
    #id: _f$id,
    #ownerId: _f$ownerId,
    #slug: _f$slug,
    #title: _f$title,
    #body: _f$body,
    #status: _f$status,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #publishedAt: _f$publishedAt,
    #ownerUsername: _f$ownerUsername,
    #tabcoins: _f$tabcoins,
    #tabcoinsCredit: _f$tabcoinsCredit,
    #tabcoinsDebit: _f$tabcoinsDebit,
    #commentCount: _f$commentCount,
  };

  static DetailedNewsEntity _instantiate(DecodingData data) {
    return DetailedNewsEntity(
        id: data.dec(_f$id),
        ownerId: data.dec(_f$ownerId),
        slug: data.dec(_f$slug),
        title: data.dec(_f$title),
        body: data.dec(_f$body),
        status: data.dec(_f$status),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        publishedAt: data.dec(_f$publishedAt),
        ownerUsername: data.dec(_f$ownerUsername),
        tabcoins: data.dec(_f$tabcoins),
        tabcoinsCredit: data.dec(_f$tabcoinsCredit),
        tabcoinsDebit: data.dec(_f$tabcoinsDebit),
        commentCount: data.dec(_f$commentCount));
  }

  @override
  final Function instantiate = _instantiate;

  static DetailedNewsEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DetailedNewsEntity>(map);
  }

  static DetailedNewsEntity fromJson(String json) {
    return ensureInitialized().decodeJson<DetailedNewsEntity>(json);
  }
}

mixin DetailedNewsEntityMappable {
  String toJson() {
    return DetailedNewsEntityMapper.ensureInitialized()
        .encodeJson<DetailedNewsEntity>(this as DetailedNewsEntity);
  }

  Map<String, dynamic> toMap() {
    return DetailedNewsEntityMapper.ensureInitialized()
        .encodeMap<DetailedNewsEntity>(this as DetailedNewsEntity);
  }

  DetailedNewsEntityCopyWith<DetailedNewsEntity, DetailedNewsEntity,
          DetailedNewsEntity>
      get copyWith => _DetailedNewsEntityCopyWithImpl(
          this as DetailedNewsEntity, $identity, $identity);
  @override
  String toString() {
    return DetailedNewsEntityMapper.ensureInitialized()
        .stringifyValue(this as DetailedNewsEntity);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            DetailedNewsEntityMapper.ensureInitialized()
                .isValueEqual(this as DetailedNewsEntity, other));
  }

  @override
  int get hashCode {
    return DetailedNewsEntityMapper.ensureInitialized()
        .hashValue(this as DetailedNewsEntity);
  }
}

extension DetailedNewsEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DetailedNewsEntity, $Out> {
  DetailedNewsEntityCopyWith<$R, DetailedNewsEntity, $Out>
      get $asDetailedNewsEntity =>
          $base.as((v, t, t2) => _DetailedNewsEntityCopyWithImpl(v, t, t2));
}

abstract class DetailedNewsEntityCopyWith<$R, $In extends DetailedNewsEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? ownerId,
      String? slug,
      String? title,
      String? body,
      String? status,
      String? createdAt,
      String? updatedAt,
      String? publishedAt,
      String? ownerUsername,
      int? tabcoins,
      int? tabcoinsCredit,
      int? tabcoinsDebit,
      int? commentCount});
  DetailedNewsEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DetailedNewsEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DetailedNewsEntity, $Out>
    implements DetailedNewsEntityCopyWith<$R, DetailedNewsEntity, $Out> {
  _DetailedNewsEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DetailedNewsEntity> $mapper =
      DetailedNewsEntityMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? ownerId,
          String? slug,
          String? title,
          String? body,
          String? status,
          String? createdAt,
          String? updatedAt,
          String? publishedAt,
          String? ownerUsername,
          int? tabcoins,
          int? tabcoinsCredit,
          int? tabcoinsDebit,
          int? commentCount}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (ownerId != null) #ownerId: ownerId,
        if (slug != null) #slug: slug,
        if (title != null) #title: title,
        if (body != null) #body: body,
        if (status != null) #status: status,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (publishedAt != null) #publishedAt: publishedAt,
        if (ownerUsername != null) #ownerUsername: ownerUsername,
        if (tabcoins != null) #tabcoins: tabcoins,
        if (tabcoinsCredit != null) #tabcoinsCredit: tabcoinsCredit,
        if (tabcoinsDebit != null) #tabcoinsDebit: tabcoinsDebit,
        if (commentCount != null) #commentCount: commentCount
      }));
  @override
  DetailedNewsEntity $make(CopyWithData data) => DetailedNewsEntity(
      id: data.get(#id, or: $value.id),
      ownerId: data.get(#ownerId, or: $value.ownerId),
      slug: data.get(#slug, or: $value.slug),
      title: data.get(#title, or: $value.title),
      body: data.get(#body, or: $value.body),
      status: data.get(#status, or: $value.status),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      publishedAt: data.get(#publishedAt, or: $value.publishedAt),
      ownerUsername: data.get(#ownerUsername, or: $value.ownerUsername),
      tabcoins: data.get(#tabcoins, or: $value.tabcoins),
      tabcoinsCredit: data.get(#tabcoinsCredit, or: $value.tabcoinsCredit),
      tabcoinsDebit: data.get(#tabcoinsDebit, or: $value.tabcoinsDebit),
      commentCount: data.get(#commentCount, or: $value.commentCount));

  @override
  DetailedNewsEntityCopyWith<$R2, DetailedNewsEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DetailedNewsEntityCopyWithImpl($value, $cast, t);
}
