import 'package:ejemplo_login/screens/screens.dart';
import 'package:ejemplo_login/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /** Key es un identificador único para un widget. Especificar una clave (key)
   *  puede ser útil cuando necesitas identificar un widget de manera única.
   */
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: InputScreen.routerName,
      routes: {
        HomeScreen.routerName: ( _ ) => const HomeScreen(),
        SettingScreen.routerName: ( _ ) => const SettingScreen(),
        InputScreen.routerName: ( _ ) => const InputScreen(),
      },
      theme: AppTheme.lightTheme,
    );
  }
}
