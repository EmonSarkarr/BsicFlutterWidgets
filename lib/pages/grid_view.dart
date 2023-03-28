import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  static const String routeName = "/grid_view";

  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View'),centerTitle: true),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2), itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(20)),
              width: 200,
              height: 200,
              child: Center(child:  Text('GridView[$index]')),
            );
      } ),
    );
  }}
