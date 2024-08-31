// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'news_entity.dart';

class NewsEntityMapper extends ClassMapperBase<NewsEntity> {
  NewsEntityMapper._();

  static NewsEntityMapper? _instance;
  static NewsEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NewsEntityMapper._());
      NewsEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NewsEntity';

  static String _$id(NewsEntity v) => v.id;
  static const Field<NewsEntity, String> _f$id = Field('id', _$id);
  static String _$ownerId(NewsEntity v) => v.ownerId;
  static const Field<NewsEntity, String> _f$ownerId =
      Field('ownerId', _$ownerId, key: 'owner_id');
  static String _$slug(NewsEntity v) => v.slug;
  static const Field<NewsEntity, String> _f$slug = Field('slug', _$slug);
  static String _$status(NewsEntity v) => v.status;
  static const Field<NewsEntity, String> _f$status = Field('status', _$status);
  static DateTime _$createdAt(NewsEntity v) => v.createdAt;
  static const Field<NewsEntity, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static DateTime _$updatedAt(NewsEntity v) => v.updatedAt;
  static const Field<NewsEntity, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');
  static DateTime _$publishedAt(NewsEntity v) => v.publishedAt;
  static const Field<NewsEntity, DateTime> _f$publishedAt =
      Field('publishedAt', _$publishedAt, key: 'published_at');
  static String _$ownerUsername(NewsEntity v) => v.ownerUsername;
  static const Field<NewsEntity, String> _f$ownerUsername =
      Field('ownerUsername', _$ownerUsername, key: 'owner_username');
  static int _$tabcoins(NewsEntity v) => v.tabcoins;
  static const Field<NewsEntity, int> _f$tabcoins =
      Field('tabcoins', _$tabcoins);
  static int _$tabcoinsCredit(NewsEntity v) => v.tabcoinsCredit;
  static const Field<NewsEntity, int> _f$tabcoinsCredit =
      Field('tabcoinsCredit', _$tabcoinsCredit, key: 'tabcoins_credit');
  static int _$tabcoinsDebit(NewsEntity v) => v.tabcoinsDebit;
  static const Field<NewsEntity, int> _f$tabcoinsDebit =
      Field('tabcoinsDebit', _$tabcoinsDebit, key: 'tabcoins_debit');
  static int _$commentCount(NewsEntity v) => v.commentCount;
  static const Field<NewsEntity, int> _f$commentCount =
      Field('commentCount', _$commentCount, key: 'children_deep_count');
  static List<NewsEntity> _$children(NewsEntity v) => v.children;
  static const Field<NewsEntity, List<NewsEntity>> _f$children =
      Field('children', _$children, hook: NullToListHook());
  static String? _$title(NewsEntity v) => v.title;
  static const Field<NewsEntity, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$body(NewsEntity v) => v.body;
  static const Field<NewsEntity, String> _f$body =
      Field('body', _$body, opt: true);

  @override
  final MappableFields<NewsEntity> fields = const {
    #id: _f$id,
    #ownerId: _f$ownerId,
    #slug: _f$slug,
    #status: _f$status,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #publishedAt: _f$publishedAt,
    #ownerUsername: _f$ownerUsername,
    #tabcoins: _f$tabcoins,
    #tabcoinsCredit: _f$tabcoinsCredit,
    #tabcoinsDebit: _f$tabcoinsDebit,
    #commentCount: _f$commentCount,
    #children: _f$children,
    #title: _f$title,
    #body: _f$body,
  };

  static NewsEntity _instantiate(DecodingData data) {
    return NewsEntity(
        id: data.dec(_f$id),
        ownerId: data.dec(_f$ownerId),
        slug: data.dec(_f$slug),
        status: data.dec(_f$status),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        publishedAt: data.dec(_f$publishedAt),
        ownerUsername: data.dec(_f$ownerUsername),
        tabcoins: data.dec(_f$tabcoins),
        tabcoinsCredit: data.dec(_f$tabcoinsCredit),
        tabcoinsDebit: data.dec(_f$tabcoinsDebit),
        commentCount: data.dec(_f$commentCount),
        children: data.dec(_f$children),
        title: data.dec(_f$title),
        body: data.dec(_f$body));
  }

  @override
  final Function instantiate = _instantiate;

  static NewsEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NewsEntity>(map);
  }

  static NewsEntity fromJson(String json) {
    return ensureInitialized().decodeJson<NewsEntity>(json);
  }
}

mixin NewsEntityMappable {
  String toJson() {
    return NewsEntityMapper.ensureInitialized()
        .encodeJson<NewsEntity>(this as NewsEntity);
  }

  Map<String, dynamic> toMap() {
    return NewsEntityMapper.ensureInitialized()
        .encodeMap<NewsEntity>(this as NewsEntity);
  }

  NewsEntityCopyWith<NewsEntity, NewsEntity, NewsEntity> get copyWith =>
      _NewsEntityCopyWithImpl(this as NewsEntity, $identity, $identity);
  @override
  String toString() {
    return NewsEntityMapper.ensureInitialized()
        .stringifyValue(this as NewsEntity);
  }

  @override
  bool operator ==(Object other) {
    return NewsEntityMapper.ensureInitialized()
        .equalsValue(this as NewsEntity, other);
  }

  @override
  int get hashCode {
    return NewsEntityMapper.ensureInitialized().hashValue(this as NewsEntity);
  }
}

extension NewsEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NewsEntity, $Out> {
  NewsEntityCopyWith<$R, NewsEntity, $Out> get $asNewsEntity =>
      $base.as((v, t, t2) => _NewsEntityCopyWithImpl(v, t, t2));
}

abstract class NewsEntityCopyWith<$R, $In extends NewsEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, NewsEntity, NewsEntityCopyWith<$R, NewsEntity, NewsEntity>>
      get children;
  $R call(
      {String? id,
      String? ownerId,
      String? slug,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? publishedAt,
      String? ownerUsername,
      int? tabcoins,
      int? tabcoinsCredit,
      int? tabcoinsDebit,
      int? commentCount,
      List<NewsEntity>? children,
      String? title,
      String? body});
  NewsEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NewsEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NewsEntity, $Out>
    implements NewsEntityCopyWith<$R, NewsEntity, $Out> {
  _NewsEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NewsEntity> $mapper =
      NewsEntityMapper.ensureInitialized();
  @override
  ListCopyWith<$R, NewsEntity, NewsEntityCopyWith<$R, NewsEntity, NewsEntity>>
      get children => ListCopyWith($value.children,
          (v, t) => v.copyWith.$chain(t), (v) => call(children: v));
  @override
  $R call(
          {String? id,
          String? ownerId,
          String? slug,
          String? status,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? publishedAt,
          String? ownerUsername,
          int? tabcoins,
          int? tabcoinsCredit,
          int? tabcoinsDebit,
          int? commentCount,
          List<NewsEntity>? children,
          Object? title = $none,
          Object? body = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (ownerId != null) #ownerId: ownerId,
        if (slug != null) #slug: slug,
        if (status != null) #status: status,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (publishedAt != null) #publishedAt: publishedAt,
        if (ownerUsername != null) #ownerUsername: ownerUsername,
        if (tabcoins != null) #tabcoins: tabcoins,
        if (tabcoinsCredit != null) #tabcoinsCredit: tabcoinsCredit,
        if (tabcoinsDebit != null) #tabcoinsDebit: tabcoinsDebit,
        if (commentCount != null) #commentCount: commentCount,
        if (children != null) #children: children,
        if (title != $none) #title: title,
        if (body != $none) #body: body
      }));
  @override
  NewsEntity $make(CopyWithData data) => NewsEntity(
      id: data.get(#id, or: $value.id),
      ownerId: data.get(#ownerId, or: $value.ownerId),
      slug: data.get(#slug, or: $value.slug),
      status: data.get(#status, or: $value.status),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      publishedAt: data.get(#publishedAt, or: $value.publishedAt),
      ownerUsername: data.get(#ownerUsername, or: $value.ownerUsername),
      tabcoins: data.get(#tabcoins, or: $value.tabcoins),
      tabcoinsCredit: data.get(#tabcoinsCredit, or: $value.tabcoinsCredit),
      tabcoinsDebit: data.get(#tabcoinsDebit, or: $value.tabcoinsDebit),
      commentCount: data.get(#commentCount, or: $value.commentCount),
      children: data.get(#children, or: $value.children),
      title: data.get(#title, or: $value.title),
      body: data.get(#body, or: $value.body));

  @override
  NewsEntityCopyWith<$R2, NewsEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NewsEntityCopyWithImpl($value, $cast, t);
}
