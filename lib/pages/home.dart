import 'package:all_design/pages/container_test.dart';
import 'package:all_design/pages/grid_view.dart';
import 'package:all_design/pages/indicator_page.dart';
import 'package:all_design/pages/list_view_check.dart';
import 'package:all_design/pages/others_page.dart';
import 'package:all_design/pages/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;
  int result = 0;
  List<String> Name = <String>['Emon', 'Mosfiqur', 'Mon', 'Jack'];
  var selected = "Choose one";
  bool _checkValue = false;
  bool _switchValue = false;
  double _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: _switchValue == false ? Colors.white : Colors.black,
      appBar: AppBar(title: const Text('Home page')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //This is a Text view
            const Text(
              "This is text ",
              style: TextStyle(fontSize: 29, color: Colors.blue),
            ),
            const SizedBox(height: 50),

            //Evaluated button
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                    context, OthersPage.routeName,
                    arguments: 'Sent Password =50'),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 49),
                )),

            SizedBox(height: 50),

            //Rich text
            RichText(
                text: const TextSpan(
                    text: "Rich Text",
                    style: TextStyle(fontSize: 29, color: Colors.blue),
                    children: [
                  TextSpan(
                      text: "CLick to open a Facebook",
                      style:
                          TextStyle(fontSize: 39, color: Colors.greenAccent)),
                  TextSpan(
                      text: 'OK',
                      style: TextStyle(color: Colors.black, fontSize: 29))
                ])),

            const SizedBox(height: 50),

            OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ContainerTest.routeName);
                },
                child: const Text("Container Test",
                    style: TextStyle(color: Colors.red, fontSize: 30))),

            const SizedBox(height: 50),

            FloatingActionButton(
              onPressed: () {
                try {
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } catch (e) {
                  print(e);
                  print("PROBLEM");
                }
                ;
              },
              backgroundColor: Colors.red,
              child: const Text("Toast",
                  style: TextStyle(fontSize: 29, color: Colors.white)),
            ),

            SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.extended(
                    onPressed: () {
                      setState(() {
                        result += 10;
                      });
                    },
                    label: const Text('Increment',
                        style: TextStyle(fontSize: 30))),
                Text(
                  "$result",
                  style: TextStyle(fontSize: 40, color: Colors.purple),
                ),
              ],
            ),

            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(selected, style: TextStyle(fontSize: 40)),
                DropdownButton(
                    iconSize: 40,
                    dropdownColor: Colors.blue,
                    hint: Text('Select one'),
                    items: [
                      DropdownMenuItem(
                        value: "Emon",
                        child: Text("EMON"),
                      ),
                      DropdownMenuItem(
                        value: "Mosfiq",
                        child: Text("MOSFIQ"),
                      )
                    ],
                    onChanged: (value) {
                      setState(() {
                        selected = value!;
                      });
                    }),
              ],
            ),

            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: _checkValue,
                    onChanged: (value) {
                      setState(() {
                        _checkValue = value!;
                      });
                    }),
                Text(_checkValue == false ? "Unchecked" : "Checked",
                    style: TextStyle(fontSize: 32, color: Colors.blue)),
              ],
            ),

            SizedBox(height: 50),

            //Switch
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("NIGHTMODE",
                    style: TextStyle(fontSize: 32, color: Colors.blue)),
                Switch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                        print(_switchValue);
                      });
                    }),
                Text(
                  _switchValue == false ? 'OFF' : "ON",
                  style: TextStyle(color: Colors.red, fontSize: 32),
                ),
              ],
            ),

            SizedBox(height: 50),

            //SLider

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${_sliderValue.round()}",
                    style: TextStyle(
                        fontSize: 39,
                        fontWeight: FontWeight.bold,
                        color: Colors.green)),
                Slider(
                    value: _sliderValue,
                    max: 50,
                    min: 0,
                    divisions: 50,
                    label: '${_sliderValue.round()}',
                    onChanged: (val) {
                      setState(() {
                        _sliderValue = val;
                      });
                    }),
              ],
            ),

            Divider(color: Colors.blue, height: 20, thickness: 22.2),

            const SizedBox(height: 20),

            //GridView
            FloatingActionButton.extended(
              onPressed: () => Navigator.pushNamed(
                context,
                GridViewPage.routeName,
              ),
              label: const Text("GridView Example",
                  style: TextStyle(color: Colors.green)),
              icon: const Icon(Icons.account_box_rounded),
              backgroundColor: Colors.black87,
            ),
            const SizedBox(height: 20),

            //Flotting action button
            FloatingActionButton.extended(
              onPressed: () => Navigator.pushNamed(
                context,
                ListViewPage.routeName,
              ),
              label: const Text("ListVIewPage",
                  style: TextStyle(color: Colors.green)),
              icon: const Icon(Icons.account_box_rounded),
              backgroundColor: Colors.black87,
            ),

            const SizedBox(height: 20),

            //Sliver appBar
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                      context,
                      SliverAppbar.routeName,
                    ),
                child: const Text(
                  "SliverAppBar",
                  style: TextStyle(fontSize: 40),
                )),
            SizedBox(height: 50),

            //sliderview appBar
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                      context,
                      IndicatorPage.routeName,
                    ),
                child: const Text(
                  "Indicators",
                  style: TextStyle(fontSize: 40),
                )),

            SizedBox(height: 50),

            //COntainer Button

            InkWell(
              onTap: () {
                print("RELOAD container or button is pressrd");
                Fluttertoast.showToast(
                  msg: "THIS IS CUSTOM TOAST",
                  backgroundColor: Colors.redAccent,
                  textColor: Colors.white,
                  
                );
              },
              child: Container(
                height: 300,
                width: 300,
                //  height: size.height / 20,
                //   width: size.width / 1.2,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 10),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(
                          'https://cdn0.iconfinder.com/data/icons/glyphpack/41/refresh-512.png',
                        ))),
              ),
            ),
            SizedBox(height: 50),

            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "lib/emon/logo.png",
                    fit: BoxFit.cover,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
