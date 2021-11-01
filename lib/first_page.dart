import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FirstFirstRouteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FirstFirstRouteWidgetState();
  }
}

class _FirstFirstRouteWidgetState extends State<FirstFirstRouteWidget> {
  _FirstFirstRouteWidgetState();

  @override
  void initState() {
    print('initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(FirstFirstRouteWidget oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('[XDEBUG] - FirstFirstRouteWidget is disposing~');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open first route'),
          onPressed: () {
            print("open first page again!");
            // FlutterBoost.singleton.open("first").then((Map value){
            //   print("did receive first route result");
            //   print("did receive first route result $value");
            // });
          },
        ),
      ),
    );
  }
}
