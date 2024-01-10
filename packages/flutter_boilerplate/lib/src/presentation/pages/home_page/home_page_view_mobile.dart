import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'home_page_presenter.dart';
import 'home_page_view_model.dart';

part 'home_page_view_mobile.g.dart';

class HomePageViewMobile extends StatelessWidget {
  const HomePageViewMobile({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const BuildBody(),
      floatingActionButton: const BuildFloatingActionButton(),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
  }
}

@cwidget
Widget buildBody(BuildContext context, WidgetRef ref) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          ref.watch(homePagePresenterProvider).counter.value.toString(),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    ),
  );
}

@cwidget
Widget buildFloatingActionButton(WidgetRef ref) {
  final HomePageViewModel viewModel = ref.watch(homePagePresenterProvider);

  return FloatingActionButton(
    onPressed: () async => ref
        .read(homePagePresenterProvider.notifier)
        .incrementCounter(viewModel),
    tooltip: 'Increment',
    child: const Icon(Icons.add),
  );
}
