import 'package:di_1/classes/classes.dart';
import 'package:di_1/step_0/di_zero.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PageZero extends StatefulWidget {
  const PageZero({Key? key}) : super(key: key);

  @override
  State<PageZero> createState() => _PageZeroState();
}

class _PageZeroState extends State<PageZero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => GetIt.instance.get<DataSource1>().hello(),
              child: Text('DataSource1 '),
            ),
            ElevatedButton(
              //TODO fix a problem
              onPressed: () => GetIt.instance.get<DataSource2>().hello(),
              child: Text('DataSource2 '),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    DiInit0().init();
  }

  @override
  void dispose() {
    DiInit0().deInit();
    super.dispose();
  }
}
