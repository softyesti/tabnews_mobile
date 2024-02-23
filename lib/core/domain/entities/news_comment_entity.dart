import 'package:dart_mappable/dart_mappable.dart';

part 'news_comment_entity.mapper.dart';

@MappableClass()
class NewsCommentEntity with NewsCommentEntityMappable {
  const NewsCommentEntity({
    required this.id,
    required this.parentId,
    required this.ownerId,
    required this.slug,
    required this.body,
    required this.status,
    required this.publishedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.ownerUsername,
    required this.tabcoins,
    required this.tabcoinsCredit,
    required this.tabcoinsDebit,
    required this.comments,
    required this.commentCount,
  });

  final String id;

  @MappableField(key: 'parent_id')
  final String parentId;

  @MappableField(key: 'owner_id')
  final String ownerId;

  final String slug;
  final String body;
  final String status;

  @MappableField(key: 'published_at')
  final String publishedAt;

  @MappableField(key: 'created_at')
  final String createdAt;

  @MappableField(key: 'updated_at')
  final String updatedAt;

  @MappableField(key: 'owner_username')
  final String ownerUsername;

  final int tabcoins;

  @MappableField(key: 'tabcoins_credit')
  final int tabcoinsCredit;

  @MappableField(key: 'tabcoins_debit')
  final int tabcoinsDebit;

  @MappableField(key: 'children')
  final List<NewsCommentEntity> comments;

  @MappableField(key: 'children_deep_count')
  final int commentCount;
}
