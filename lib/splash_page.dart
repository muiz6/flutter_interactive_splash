import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((_) => _afterBuild(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset('assets/images/flutter_logo.png'),
    );
  }

  void _afterBuild(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      builder: (builderContext) {
        return Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Card(
              child: Column(
                children: [
                  Text('Press OK to dismiss'),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(builderContext),
                    child: Text('OK'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
