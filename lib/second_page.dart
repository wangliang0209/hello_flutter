import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boost/flutter_boost.dart';

class SecondRouteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SecondRouteWidgetState();
  }
}

class _SecondRouteWidgetState extends State<SecondRouteWidget> {

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
  void didUpdateWidget(SecondRouteWidget oldWidget) {
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
        leading: new IconButton(
            onPressed: () => {
              SystemNavigator.pop()
            },
            icon: Icon(Icons.arrow_back)
        ),
        title: Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open second route'),
          onPressed: () {
            Logger.log("WLTest open first page again!");
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
