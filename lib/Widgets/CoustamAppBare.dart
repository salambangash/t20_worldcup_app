import 'package:flutter/material.dart';

class CoustomAppBar extends StatelessWidget implements PreferredSize {
  final String Title;
   CoustomAppBar({Key? key, required this.Title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(Title),

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),
        bottomRight: Radius.circular(10)
        )
      ),
    );
  }

  @override
  // TODO: implement child
  Size get PreferredSize => const Size.fromHeight(60);

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>const Size.fromHeight(60);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
