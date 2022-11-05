import 'package:flutter/material.dart';

class DashboardWidgets extends StatelessWidget {
  final String  imagepath;
  final String  title;
  final VoidCallback ontab;

  const DashboardWidgets({
    Key? key,
    required this.imagepath,
    required this.title,
    required this.ontab
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ontab,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              ),
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Image(
                  height: 100,
                  width: 100,
                  image: AssetImage(imagepath)),
              Text(title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
    );
  }
}
