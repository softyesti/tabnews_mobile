import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:tabnews/core/domain/enums/news_filter_enum.dart';
import 'package:tabnews/core/widgets/button/button_widget.dart';
import 'package:tabnews/core/widgets/radio_group_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';

class FilterBottomSheetWidget extends StatefulWidget {
  const FilterBottomSheetWidget({
    required this.selected,
    required this.onSelected,
    super.key,
  });

  final NewsFilterEnum selected;
  final void Function(NewsFilterEnum value) onSelected;

  @override
  State<StatefulWidget> createState() => _FilterBottomSheetWidgetState();
}

class _FilterBottomSheetWidgetState extends State<FilterBottomSheetWidget> {
  late NewsFilterEnum selected;

  @override
  void initState() {
    super.initState();

    selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextWidget(
          'Selecione o filtro',
          size: TextWidgetSizes.headlineMedium,
        ),
        const SpacerWidget(),
        RadioGroupWidget<NewsFilterEnum>(
          selected: selected,
          onSelected: (value) => setState(() => selected = value),
          items: const [
            RadioGroupWidgetItem(
              text: 'Antigos',
              value: NewsFilterEnum.old,
            ),
            RadioGroupWidgetItem(
              text: 'Recentes',
              value: NewsFilterEnum.recent,
            ),
            RadioGroupWidgetItem(
              text: 'Relevantes',
              value: NewsFilterEnum.relevant,
            ),
          ],
        ),
        const SpacerWidget(),
        ButtonWidget(
          text: 'Aplicar',
          icon: SolarIconsOutline.checkCircle,
          onPressed: () {
            widget.onSelected(selected);
            Get.back<void>();
          },
        ),
      ],
    );
  }
}
