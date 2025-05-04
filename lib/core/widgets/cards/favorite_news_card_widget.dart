import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:tabnews/core/domain/entities/favorite_entity.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/cards/widgets/header_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/core/widgets/touchable_widget.dart';

class FavoriteNewsCardWidget extends StatelessWidget with ThemeMixin {
  const FavoriteNewsCardWidget({
    required this.favorite,
    this.onPressed,
    this.onFavoritePressed,
    super.key,
  });

  final FavoriteEntity favorite;
  final void Function()? onPressed;
  final void Function()? onFavoritePressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();

    return TouchableWidget(
      onPressed: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            user: favorite.ownerUsername,
            publishedAt: favorite.publishedAt,
          ),
          const SpacerWidget(size: SpacerWidgetSizes.small),
          CardWidget(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  favorite.title,
                  maxLines: 4,
                  size: TextWidgetSizes.titleMedium,
                ),
                const SpacerWidget(size: SpacerWidgetSizes.small),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButtonWidget(
                      fgColor: colors.primary,
                      icon: SolarIconsBold.start1,
                      onPressed: onFavoritePressed,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
