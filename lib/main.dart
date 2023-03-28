import 'package:all_design/pages/container_test.dart';
import 'package:all_design/pages/grid_view.dart';
import 'package:all_design/pages/home.dart';
import 'package:all_design/pages/indicator_page.dart';
import 'package:all_design/pages/list_view_check.dart';
import 'package:all_design/pages/sliver_app_bar.dart';
import 'package:flutter/material.dart';

import 'pages/others_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName : (context) => HomePage(),
        OthersPage.routeName : (context)=> OthersPage(),
        ListViewPage.routeName : (context)=> ListViewPage(),
        ContainerTest.routeName : (context)=> ContainerTest(),
        GridViewPage.routeName : (context)=> GridViewPage(),
        SliverAppbar.routeName : (context)=> SliverAppbar(),
        IndicatorPage.routeName : (context)=> IndicatorPage(),

      },

    );
  }
}
