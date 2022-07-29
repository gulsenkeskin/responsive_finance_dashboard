import 'package:flutter/material.dart';
import 'package:responsive_finance_dashboard/config/menu_controller.dart';
import 'package:responsive_finance_dashboard/screens/main/main_screen.dart';
import 'package:responsive_finance_dashboard/util/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Financial Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryBg,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        canvasColor: secondaryBg,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: const MainScreen(),
      ),
    );
  }
}
