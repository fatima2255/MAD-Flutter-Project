import 'package:flutter/material.dart';
import 'package:internship/widgets/grid_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: GridViewBuilderWidget(),
            ),
        );
    }
}