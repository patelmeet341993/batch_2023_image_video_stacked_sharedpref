import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  @override
  void initState() {
    print("init page3");
    super.initState();
  }

  @override
  void dispose() {
    print("page3 dispose");
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(
          width: double.maxFinite,
          color: Colors.black,
        ))
      ],
    );
  }
}
