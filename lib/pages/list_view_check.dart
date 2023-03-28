import 'package:all_design/db.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {

  static const String routeName = "/list_view_page";

  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List View"),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: students.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 200,
                child: ListTile(
                  onTap: (){},
                  title: Text(students[index]),
                  tileColor: index.isEven
                      ? Colors.blueAccent.shade200
                      : Colors.green[50],
                ),
              );
            },
          ),
        )
        );
  }
}
