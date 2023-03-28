
import 'package:flutter/material.dart';

class OthersPage extends StatefulWidget {
  static const String routeName = "/othersPage";

  const OthersPage({Key? key}) : super(key: key);




  @override
  State<OthersPage> createState() => _OthersPageState();
}

class _OthersPageState extends State<OthersPage> {

  late String sentData;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
           Center(child: Text('ReCVDATA:'+sentData,style: TextStyle(fontSize: 39),)),


          ],
        ),
      )
    );
  }

  @override
  void initState() {

    super.initState();
  }
  @override
  void didChangeDependencies() {
    sentData = ModalRoute.of(context)!.settings.arguments as String;
    super.didChangeDependencies();
  }
}
