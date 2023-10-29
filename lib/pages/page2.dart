import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  void initState() {
    print("init page2");
    super.initState();
  }

  @override
  void dispose() {
    print("page2 dispose");
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(
          width: double.maxFinite,
          color: Colors.orange,
        ))
      ],
    );
  }
}
