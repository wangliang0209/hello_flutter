import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SubTest extends StatefulWidget {
  const SubTest({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _SubTestState();
}

const channel = const MethodChannel("pigeon_oda_class");

class _SubTestState extends State<SubTest> {
  int clickCount = 0;

  void _incrementCounter() {
    setState(() {
      clickCount++;
    });
  }

  void onCloseFlutterPage() {
    try {
      String params = "{\"a\": 1, \"b\": \"test\"}";
      Future future = channel.invokeMethod("goBack", params);
      print(future.toString());
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            onPressed: () => {
                  if (Navigator.canPop(context))
                    {Navigator.pop(context)}
                  else
                    {onCloseFlutterPage()}
                },
            icon: Icon(Icons.arrow_back)),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is flutter 111 route : ${widget.title}',
              style: const TextStyle(
                  color: Color(0xFF600F00)
              ),
            )
          ],
        ),
      ),
    );
  }
}
