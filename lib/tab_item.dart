// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String title;
  // final int count;
  const TabItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        // style: const TextStyle(fontSize: 12),
      ),
    );
  }
}
