import 'package:di_1/classes/classes.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'di_two.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => GetIt.instance.get<Repository1>().hello(),
              child: Text('Repository1 '),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    DiInit2().init();
  }

  @override
  void dispose() {
    DiInit2().deInit();
    super.dispose();
  }
}
