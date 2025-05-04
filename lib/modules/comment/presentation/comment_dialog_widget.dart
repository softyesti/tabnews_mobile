import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/blur_widget.dart';
import 'package:tabnews/core/widgets/button/button_widget.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/markdown/markdown_editor.dart';
import 'package:tabnews/core/widgets/markdown/markdown_tools_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_field_widget.dart';

class CommentDialogWidget extends StatelessWidget with ThemeMixin {
  const CommentDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics();
    final viewInsets = MediaQuery.of(context).viewInsets;

    final controller = TextEditingController();
    final editor = MarkdownEditor(controller: controller);

    final borderRadius = BorderRadius.all(metrics.radius).copyWith(
      bottomLeft: Radius.zero,
      bottomRight: Radius.zero,
    );

    return BlurWidget(
      borderRadius: borderRadius,
      child: CardWidget(
        height: double.infinity,
        borderRadius: borderRadius,
        padding: EdgeInsets.symmetric(horizontal: metrics.medium).copyWith(
          bottom: viewInsets.bottom != 0 ? metrics.medium : 0,
        ),
        child: Column(
          children: [
            const _AppBarWidget(),
            const SpacerWidget(),
            Expanded(child: _BodyWidget(controller: controller)),
            const SpacerWidget(),
            _ToolsWidget(editor: editor),
          ],
        ),
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget {
  const _AppBarWidget();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButtonWidget(
            icon: Ionicons.chevron_down_outline,
            iconSize: 24,
            onPressed: () => Get.back<void>(),
          ),
          const ButtonWidget(text: 'Responder'),
        ],
      ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      hintText: 'Escreva seu comentário',
      controller: controller,
      textAlignVertical: TextAlignVertical.top,
      expands: true,
    );
  }
}

class _ToolsWidget extends StatelessWidget {
  const _ToolsWidget({required this.editor});

  final MarkdownEditor editor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: MarkdownToolsWidget(editor: editor),
    );
  }
}
