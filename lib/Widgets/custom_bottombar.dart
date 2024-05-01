import 'package:cookshare/Screens/scearch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../Themes/app_theme.dart';

class CustomBottomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final double height;

  const CustomBottomAppBar({
    super.key,
    required this.height,
  });
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: AppTheme.celadon,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
              onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const Search();
                  }));
              },
              child: Icon(
                MaterialCommunityIcons.clipboard_search,
                color: Colors.white,
                size: MediaQuery.of(context).size.height * 0.045,
              )),
          GestureDetector(
              onTap: () {},
              child: Icon(
                Ionicons.ios_home_outline,
                color: Colors.white,
                size: MediaQuery.of(context).size.height * 0.045,
              )),
          GestureDetector(
              onTap: () {},
              child: Icon(
                AntDesign.hearto,
                color: Colors.white,
                size: MediaQuery.of(context).size.height * 0.045,
              ))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

/*
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return const Search();
                  })); */