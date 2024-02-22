import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/markdown_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/core/widgets/touchable_widget.dart';
import 'package:tabnews/core/widgets/wrap_widget.dart';

class CommentCardWidget extends StatelessWidget {
  const CommentCardWidget({
    this.onPressed,
    this.onCommentPressed,
    this.onUpperPressed,
    this.onDownPressed,
    super.key,
  });

  final void Function()? onPressed;
  final void Function()? onCommentPressed;
  final void Function()? onUpperPressed;
  final void Function()? onDownPressed;

  @override
  Widget build(BuildContext context) {
    return TouchableWidget(
      onPressed: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _HeaderWidget(),
          const SpacerWidget(size: SpacerWidgetSizes.small),
          CardWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MarkdownWidget(data: data),
                const SpacerWidget(),
                _ActionsWidget(
                  onUpperPressed: onUpperPressed,
                  onDownPressed: onDownPressed,
                  onCommentPressed: onCommentPressed,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        TextWidget('Autor do comment', size: TextWidgetSizes.titleMedium),
        TextWidget(' • ', size: TextWidgetSizes.titleMedium),
        TextWidget('2 dias atrás', size: TextWidgetSizes.titleMedium),
      ],
    );
  }
}

class _ActionsWidget extends StatelessWidget {
  const _ActionsWidget({
    required this.onUpperPressed,
    required this.onDownPressed,
    required this.onCommentPressed,
  });

  final void Function()? onUpperPressed;
  final void Function()? onDownPressed;
  final void Function()? onCommentPressed;

  @override
  Widget build(BuildContext context) {
    return WrapWidget(
      direction: Axis.horizontal,
      children: [
        IconButtonWidget(
          icon: Ionicons.arrow_up_outline,
          onPressed: onUpperPressed,
        ),
        IconButtonWidget(
          icon: Ionicons.arrow_down_outline,
          onPressed: onDownPressed,
        ),
        IconButtonWidget(
          icon: Ionicons.chatbubble_outline,
          onPressed: onCommentPressed,
        ),
      ],
    );
  }
}

const data = '''
# Incrível

sçldjnscdlçnjkcn klcdnsdklcjdclk scdlçknj
scdçjsdcnçsdcnjjç cdsdncjsdcnlo
''';
