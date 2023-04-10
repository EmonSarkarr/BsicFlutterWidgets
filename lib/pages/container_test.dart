import 'package:all_design/db.dart';
import 'package:flutter/material.dart';

class ContainerTest extends StatefulWidget {
  static const String routeName = "/container_test";

  const ContainerTest({Key? key}) : super(key: key);

  @override
  State<ContainerTest> createState() => _ContainerTestState();
}

class _ContainerTestState extends State<ContainerTest> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size  = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('Container Test'), centerTitle: true),
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        height: size.height/1.5,
        width: double.infinity,

        child: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index){
            return Text(students[index]);
          } ,
        ),
      ),
    );
  }
}

