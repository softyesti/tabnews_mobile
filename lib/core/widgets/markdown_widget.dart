import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownWidget extends StatelessWidget {
  const MarkdownWidget({
    required this.data,
    this.scrollController,
    super.key,
  });

  final String data;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      data: data,
      selectable: true,
      padding: EdgeInsets.zero,
      controller: scrollController,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
