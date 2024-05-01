// ignore_for_file: file_names, prefer_const_constructors
import 'package:cookshare/Themes/app_theme.dart';
import 'package:flutter/material.dart';
import "../Widgets/custom_appbar.dart";
import "../Widgets/custom_bottombar.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SearchScreenState();
  }
}

class _SearchScreenState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          height: MediaQuery.of(context).size.height * 0.13,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppTheme.celadon,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(),
                      ),
                      Icon(AntDesign.search1),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Raccomanded recipes",
                        style: TextStyle(
                          color: AppTheme.lightcoral,
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomAppBar(
          height: MediaQuery.of(context).size.height * 0.1,
        ));
  }
}
