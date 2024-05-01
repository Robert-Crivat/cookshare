import 'package:flutter/material.dart';
import "../Themes/app_theme.dart";

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppTheme.paledogwood,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35))
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("CookShare", style: TextStyle(color: Colors.white, fontSize : MediaQuery.of(context).size.height * 0.04 ),)
            //Row(children: actions ?? [],),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
