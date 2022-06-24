import 'package:di_1/classes/classes.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'di_six.dart';

class PageSix extends StatefulWidget {
  const PageSix({Key? key}) : super(key: key);

  @override
  State<PageSix> createState() => _PageSixState();
}

class _PageSixState extends State<PageSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => GetIt.instance.get<UseCase3>(param1: 'Test').hello(),
              child: Text('UseCase3'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    DiInit6().init();
  }

  @override
  void dispose() {
    DiInit6().deInit();
    super.dispose();
  }
}
