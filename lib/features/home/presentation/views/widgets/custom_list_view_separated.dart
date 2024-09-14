import 'package:flutter/material.dart';

class CustomListViewSeparated extends StatelessWidget {
  final Widget widget;
  const CustomListViewSeparated({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => widget,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 10),
        itemCount: 4,
      ),
    );
  }
}
