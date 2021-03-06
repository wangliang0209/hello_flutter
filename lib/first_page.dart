import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boost/flutter_boost.dart';

class FirstFirstRouteWidget extends StatefulWidget {

  const FirstFirstRouteWidget({Key? key, required this.params}) : super(key: key);

  final Map params;

  @override
  State<StatefulWidget> createState() {
    return new _FirstFirstRouteWidgetState(params);
  }
}

class _FirstFirstRouteWidgetState extends State<FirstFirstRouteWidget> {
  _FirstFirstRouteWidgetState(this.params);

  final Map params;

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
        leading: new IconButton(
            onPressed: () => {
              SystemNavigator.pop()
            },
            icon: Icon(Icons.arrow_back)
        ),
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('${params['content'] ?? 'empty'}'),
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
