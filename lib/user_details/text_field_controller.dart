import 'package:flutter/material.dart';


class TextFieldController extends StatelessWidget {
  final Widget? child;

  const TextFieldController({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin:const EdgeInsets.symmetric(vertical: 10),
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height : size.height * 0.06,
        width: size.width * 0.95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
         border: Border.all(
           width: 1
         ),
        ),
        child: child,
      ),
    );
  }
}
