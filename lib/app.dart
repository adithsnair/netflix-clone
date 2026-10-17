import 'package:flutter/cupertino.dart';

import 'screens/login_screen.dart';

class NetflixApp extends StatelessWidget {
  const NetflixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
