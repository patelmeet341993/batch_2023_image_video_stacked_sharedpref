import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  void initState() {
    print("init page1");
    super.initState();
  }

  @override
  void dispose() {
    print("page1 dispose");
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(
          width: double.maxFinite,
          color: Colors.blueAccent,
        ))
      ],
    );
  }
}
