import 'package:flutter/material.dart';
import 'package:tabnews/core/widgets/padding_widget.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    this.appBarSize = const Size.fromHeight(50),
    this.appBar,
    this.body,
    this.padding,
    this.isLoading = false,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.child,
    super.key,
  });

  factory PageWidget.sliver({
    double anchor = 0,
    List<Widget> slivers = const [],
    Widget? appBar,
    Widget? floatingActionButton,
    Widget? bottomNavigationBar,
    ScrollController? scrollController,
  }) {
    return PageWidget(
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      child: SafeArea(
        left: false,
        right: false,
        child: CustomScrollView(
          anchor: anchor,
          slivers: slivers,
          clipBehavior: Clip.none,
          controller: scrollController,
        ),
      ),
    );
  }

  final Size appBarSize;
  final Widget? appBar;
  final Widget? body;
  final bool isLoading;
  final EdgeInsets? padding;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: appBar != null
            ? PreferredSize(preferredSize: appBarSize, child: appBar!)
            : null,
        body: PaddingWidget(
          padding: padding,
          child: Visibility(
            visible: isLoading,
            replacement: body ?? child ?? const SizedBox(),
            child: const Center(child: CircularProgressIndicator.adaptive()),
          ),
        ),
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
