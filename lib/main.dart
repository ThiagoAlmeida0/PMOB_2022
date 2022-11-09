import 'package:flutter/material.dart';
import 'package:pmob_22/utils/routes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( const MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: routes(),
    );
  }
}
