// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'news_comment_entity.dart';

class NewsCommentEntityMapper extends ClassMapperBase<NewsCommentEntity> {
  NewsCommentEntityMapper._();

  static NewsCommentEntityMapper? _instance;
  static NewsCommentEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NewsCommentEntityMapper._());
      NewsCommentEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NewsCommentEntity';

  static String _$id(NewsCommentEntity v) => v.id;
  static const Field<NewsCommentEntity, String> _f$id = Field('id', _$id);
  static String _$parentId(NewsCommentEntity v) => v.parentId;
  static const Field<NewsCommentEntity, String> _f$parentId =
      Field('parentId', _$parentId, key: 'parent_id');
  static String _$ownerId(NewsCommentEntity v) => v.ownerId;
  static const Field<NewsCommentEntity, String> _f$ownerId =
      Field('ownerId', _$ownerId, key: 'owner_id');
  static String _$slug(NewsCommentEntity v) => v.slug;
  static const Field<NewsCommentEntity, String> _f$slug = Field('slug', _$slug);
  static String _$body(NewsCommentEntity v) => v.body;
  static const Field<NewsCommentEntity, String> _f$body = Field('body', _$body);
  static String _$status(NewsCommentEntity v) => v.status;
  static const Field<NewsCommentEntity, String> _f$status =
      Field('status', _$status);
  static String _$publishedAt(NewsCommentEntity v) => v.publishedAt;
  static const Field<NewsCommentEntity, String> _f$publishedAt =
      Field('publishedAt', _$publishedAt, key: 'published_at');
  static String _$createdAt(NewsCommentEntity v) => v.createdAt;
  static const Field<NewsCommentEntity, String> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static String _$updatedAt(NewsCommentEntity v) => v.updatedAt;
  static const Field<NewsCommentEntity, String> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');
  static String _$ownerUsername(NewsCommentEntity v) => v.ownerUsername;
  static const Field<NewsCommentEntity, String> _f$ownerUsername =
      Field('ownerUsername', _$ownerUsername, key: 'owner_username');
  static int _$tabcoins(NewsCommentEntity v) => v.tabcoins;
  static const Field<NewsCommentEntity, int> _f$tabcoins =
      Field('tabcoins', _$tabcoins);
  static int _$tabcoinsCredit(NewsCommentEntity v) => v.tabcoinsCredit;
  static const Field<NewsCommentEntity, int> _f$tabcoinsCredit =
      Field('tabcoinsCredit', _$tabcoinsCredit, key: 'tabcoins_credit');
  static int _$tabcoinsDebit(NewsCommentEntity v) => v.tabcoinsDebit;
  static const Field<NewsCommentEntity, int> _f$tabcoinsDebit =
      Field('tabcoinsDebit', _$tabcoinsDebit, key: 'tabcoins_debit');
  static List<NewsCommentEntity> _$comments(NewsCommentEntity v) => v.comments;
  static const Field<NewsCommentEntity, List<NewsCommentEntity>> _f$comments =
      Field('comments', _$comments, key: 'children');
  static int _$commentCount(NewsCommentEntity v) => v.commentCount;
  static const Field<NewsCommentEntity, int> _f$commentCount =
      Field('commentCount', _$commentCount, key: 'children_deep_count');

  @override
  final MappableFields<NewsCommentEntity> fields = const {
    #id: _f$id,
    #parentId: _f$parentId,
    #ownerId: _f$ownerId,
    #slug: _f$slug,
    #body: _f$body,
    #status: _f$status,
    #publishedAt: _f$publishedAt,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #ownerUsername: _f$ownerUsername,
    #tabcoins: _f$tabcoins,
    #tabcoinsCredit: _f$tabcoinsCredit,
    #tabcoinsDebit: _f$tabcoinsDebit,
    #comments: _f$comments,
    #commentCount: _f$commentCount,
  };

  static NewsCommentEntity _instantiate(DecodingData data) {
    return NewsCommentEntity(
        id: data.dec(_f$id),
        parentId: data.dec(_f$parentId),
        ownerId: data.dec(_f$ownerId),
        slug: data.dec(_f$slug),
        body: data.dec(_f$body),
        status: data.dec(_f$status),
        publishedAt: data.dec(_f$publishedAt),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        ownerUsername: data.dec(_f$ownerUsername),
        tabcoins: data.dec(_f$tabcoins),
        tabcoinsCredit: data.dec(_f$tabcoinsCredit),
        tabcoinsDebit: data.dec(_f$tabcoinsDebit),
        comments: data.dec(_f$comments),
        commentCount: data.dec(_f$commentCount));
  }

  @override
  final Function instantiate = _instantiate;

  static NewsCommentEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NewsCommentEntity>(map);
  }

  static NewsCommentEntity fromJson(String json) {
    return ensureInitialized().decodeJson<NewsCommentEntity>(json);
  }
}

mixin NewsCommentEntityMappable {
  String toJson() {
    return NewsCommentEntityMapper.ensureInitialized()
        .encodeJson<NewsCommentEntity>(this as NewsCommentEntity);
  }

  Map<String, dynamic> toMap() {
    return NewsCommentEntityMapper.ensureInitialized()
        .encodeMap<NewsCommentEntity>(this as NewsCommentEntity);
  }

  NewsCommentEntityCopyWith<NewsCommentEntity, NewsCommentEntity,
          NewsCommentEntity>
      get copyWith => _NewsCommentEntityCopyWithImpl(
          this as NewsCommentEntity, $identity, $identity);
  @override
  String toString() {
    return NewsCommentEntityMapper.ensureInitialized()
        .stringifyValue(this as NewsCommentEntity);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NewsCommentEntityMapper.ensureInitialized()
                .isValueEqual(this as NewsCommentEntity, other));
  }

  @override
  int get hashCode {
    return NewsCommentEntityMapper.ensureInitialized()
        .hashValue(this as NewsCommentEntity);
  }
}

extension NewsCommentEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NewsCommentEntity, $Out> {
  NewsCommentEntityCopyWith<$R, NewsCommentEntity, $Out>
      get $asNewsCommentEntity =>
          $base.as((v, t, t2) => _NewsCommentEntityCopyWithImpl(v, t, t2));
}

abstract class NewsCommentEntityCopyWith<$R, $In extends NewsCommentEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, NewsCommentEntity,
          NewsCommentEntityCopyWith<$R, NewsCommentEntity, NewsCommentEntity>>
      get comments;
  $R call(
      {String? id,
      String? parentId,
      String? ownerId,
      String? slug,
      String? body,
      String? status,
      String? publishedAt,
      String? createdAt,
      String? updatedAt,
      String? ownerUsername,
      int? tabcoins,
      int? tabcoinsCredit,
      int? tabcoinsDebit,
      List<NewsCommentEntity>? comments,
      int? commentCount});
  NewsCommentEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NewsCommentEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NewsCommentEntity, $Out>
    implements NewsCommentEntityCopyWith<$R, NewsCommentEntity, $Out> {
  _NewsCommentEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NewsCommentEntity> $mapper =
      NewsCommentEntityMapper.ensureInitialized();
  @override
  ListCopyWith<$R, NewsCommentEntity,
          NewsCommentEntityCopyWith<$R, NewsCommentEntity, NewsCommentEntity>>
      get comments => ListCopyWith($value.comments,
          (v, t) => v.copyWith.$chain(t), (v) => call(comments: v));
  @override
  $R call(
          {String? id,
          String? parentId,
          String? ownerId,
          String? slug,
          String? body,
          String? status,
          String? publishedAt,
          String? createdAt,
          String? updatedAt,
          String? ownerUsername,
          int? tabcoins,
          int? tabcoinsCredit,
          int? tabcoinsDebit,
          List<NewsCommentEntity>? comments,
          int? commentCount}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (parentId != null) #parentId: parentId,
        if (ownerId != null) #ownerId: ownerId,
        if (slug != null) #slug: slug,
        if (body != null) #body: body,
        if (status != null) #status: status,
        if (publishedAt != null) #publishedAt: publishedAt,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (ownerUsername != null) #ownerUsername: ownerUsername,
        if (tabcoins != null) #tabcoins: tabcoins,
        if (tabcoinsCredit != null) #tabcoinsCredit: tabcoinsCredit,
        if (tabcoinsDebit != null) #tabcoinsDebit: tabcoinsDebit,
        if (comments != null) #comments: comments,
        if (commentCount != null) #commentCount: commentCount
      }));
  @override
  NewsCommentEntity $make(CopyWithData data) => NewsCommentEntity(
      id: data.get(#id, or: $value.id),
      parentId: data.get(#parentId, or: $value.parentId),
      ownerId: data.get(#ownerId, or: $value.ownerId),
      slug: data.get(#slug, or: $value.slug),
      body: data.get(#body, or: $value.body),
      status: data.get(#status, or: $value.status),
      publishedAt: data.get(#publishedAt, or: $value.publishedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      ownerUsername: data.get(#ownerUsername, or: $value.ownerUsername),
      tabcoins: data.get(#tabcoins, or: $value.tabcoins),
      tabcoinsCredit: data.get(#tabcoinsCredit, or: $value.tabcoinsCredit),
      tabcoinsDebit: data.get(#tabcoinsDebit, or: $value.tabcoinsDebit),
      comments: data.get(#comments, or: $value.comments),
      commentCount: data.get(#commentCount, or: $value.commentCount));

  @override
  NewsCommentEntityCopyWith<$R2, NewsCommentEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NewsCommentEntityCopyWithImpl($value, $cast, t);
}
