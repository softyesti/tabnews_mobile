import 'package:dart_mappable/dart_mappable.dart';

part 'compact_news_entity.mapper.dart';

@MappableClass()
class CompactNewsEntity with CompactNewsEntityMappable {
  const CompactNewsEntity({
    required this.id,
    required this.ownerId,
    required this.slug,
    required this.title,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.tabcoins,
    required this.tabcoinsCredit,
    required this.tabcoinsDebit,
    required this.ownerUsername,
    required this.commentCount,
  });

  final String id;

  @MappableField(key: 'owner_id')
  final String ownerId;

  final String slug;
  final String title;
  final String status;

  @MappableField(key: 'created_at')
  final String createdAt;

  @MappableField(key: 'updated_at')
  final String updatedAt;

  @MappableField(key: 'published_at')
  final String publishedAt;

  final int tabcoins;

  @MappableField(key: 'tabcoins_credit')
  final int tabcoinsCredit;

  @MappableField(key: 'tabcoins_debit')
  final int tabcoinsDebit;

  @MappableField(key: 'owner_username')
  final String ownerUsername;

  @MappableField(key: 'children_deep_count')
  final int commentCount;
}
