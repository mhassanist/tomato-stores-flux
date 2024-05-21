import 'package:flutter/material.dart';

class TomatoPointAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //color: Colors.orange,
        height: preferredSize.height,
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: SizedBox(
            child: Image.asset(
              'assets/images/tomato_points_logo.jpg',
              height: 75,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
