import 'package:di_1/classes/classes.dart';
import 'package:di_1/step_0/di_zero.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'di_one.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => GetIt.instance.get<Repository1Impl>().hello(),
              child: Text('Repository1Impl'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    DiInit1().init();
  }

  @override
  void dispose() {
    DiInit1().deInit();
    super.dispose();
  }
}
