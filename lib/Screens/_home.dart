// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart' ;
import "../Widgets/custom_appbar.dart";
import "../Widgets/custom_bottombar.dart";

class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Homepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: MediaQuery.of(context).size.height * 0.13,
      ),
      body: null,
      bottomNavigationBar: CustomBottomAppBar(
        height: MediaQuery.of(context).size.height * 0.1,
      ),
    );
  }
}