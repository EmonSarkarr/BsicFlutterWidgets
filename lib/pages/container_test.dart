import 'package:all_design/db.dart';
import 'package:flutter/material.dart';

class ContainerTest extends StatefulWidget {
  static const String routeName = "/container_test";

  const ContainerTest({Key? key}) : super(key: key);

  @override
  State<ContainerTest> createState() => _ContainerTestState();
}

class _ContainerTestState extends State<ContainerTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container Test'), centerTitle: true),
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        height: 200,
        width: 200,
        color: Colors.white60,
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


//ListTile(
//               tileColor: Colors.black,
//           title: Text('Iteams:',style: TextStyle(fontSize: 40)),
//         )