import 'package:flutter/material.dart';
import 'package:stdnlogn/screen/home.dart';
import 'package:stdnlogn/screen/list.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            home(),
            const Expanded(child: Listpage()),

          ],
        )),
    );
  }
}