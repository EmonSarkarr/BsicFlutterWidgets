import 'package:flutter/material.dart';

class SliverAppbar extends StatefulWidget {
  static const String routeName = "/sliver_app_bar";

  const SliverAppbar({Key? key}) : super(key: key);

  @override
  State<SliverAppbar> createState() => _SliverAppbarState();
}

class _SliverAppbarState extends State<SliverAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          title:Text(''),
          pinned: true,
          backgroundColor: Colors.cyanAccent,
          expandedHeight: 400,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text("S L I V ER A P P B A R"),
            background: Image.network(
              "https://images.pexels.com/photos/1323206/pexels-photo-1323206.jpeg?cs=srgb&dl=pexels-mixu-1323206.jpg&fm=jpg",
              fit: BoxFit.cover,
            ),

          ),

        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(color: Colors.purple,
                  borderRadius: BorderRadius.circular(20)),

            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(color: Colors.purple.shade200,
                  borderRadius: BorderRadius.circular(20)),

            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(color: Colors.purple,
                  borderRadius: BorderRadius.circular(20)),

            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(20)),

            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(color: Colors.purple,
                  borderRadius: BorderRadius.circular(20)),

            ),
          ),
        ),


      ]),
    );
  }
}
