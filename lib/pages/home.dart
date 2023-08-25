import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder:( BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("XAMTEST", 
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                  background: Image(
                    image: AssetImage("assets/images/bek.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ), 
              ),
            ];
          },
      body: Center(child: Text("bernda"),),
        ),
      ),
    );
  }
}