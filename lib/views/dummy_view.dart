import 'package:flutter/material.dart';
import 'package:first_app/widgets/home_screen_widget.dart';
import 'package:first_app/model/home_screen_widget.dart';

class DummyView extends StatelessWidget {
  const DummyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
      ),
      itemCount: WIDGETS_LIST.length,
      itemBuilder: ((context, index) {
        return HomeScreenWidget(WIDGETS_LIST[index].widgetIconPath, WIDGETS_LIST[index].widgetTitle);
      }),);
  }
}
