import 'package:flutter/material.dart';
import 'package:tabnews/core/widgets/appbar_widget.dart';
import 'package:tabnews/core/widgets/padding_widget.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    this.appBarSize = const Size.fromHeight(50),
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.child,
    super.key,
  });

  factory PageWidget.sliver({
    double anchor = 0,
    List<Widget> slivers = const [],
    AppBarWidget? appBar,
    ScrollController? scrollController,
    Widget? bottomNavigationBar,
  }) {
    return PageWidget(
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      child: SafeArea(
        left: false,
        right: false,
        child: CustomScrollView(
          clipBehavior: Clip.none,
          anchor: anchor,
          controller: scrollController,
          slivers: slivers,
        ),
      ),
    );
  }

  final Size appBarSize;
  final AppBarWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: appBar != null
          ? PreferredSize(preferredSize: appBarSize, child: appBar!)
          : null,
      body: PaddingWidget(
        child: body ?? child ?? const SizedBox(),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
