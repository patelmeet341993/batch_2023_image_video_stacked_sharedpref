import 'package:flutter/material.dart';
import 'package:image_picker/pages/page1.dart';
import 'package:image_picker/pages/page2.dart';
import 'package:image_picker/pages/page3.dart';

class StackHome extends StatefulWidget {
  const StackHome({super.key});

  @override
  State<StackHome> createState() => _StackHomeState();
}

class _StackHomeState extends State<StackHome> {


  PageController controller=PageController(initialPage: 0);
  int curIndex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: mainBody(),
      ),
    );
  }


  void changeIndex(int index)
  {
    print("change index : $index");
   // controller.jumpToPage(index);
    curIndex=index;
    setState(() {

    });
  }


  Widget mainBody(){
    return Column(
      children: [
        Expanded(child: body()),
        menu()
      ],
    );
  }
  
  Widget body(){
    return IndexedStack(
     // controller: controller,
      index: curIndex,
      children: [
        
        Page1(),
        Page2(),
        Page3(),

      ],
    );
  }
  
  
  Widget menu(){
    return  Container(
      height: 60,
      child: Row(
        children: [
          Expanded(child: InkWell(
            onTap: (){
              changeIndex(0);
            },
            child: Container(
              color: Colors.brown,
              child: Text("Page 1"),
              height: 50,
            ),
          )),
          Expanded(child: InkWell(
            onTap: (){
              changeIndex(1);
            },
            child: Container(
              color: Colors.orange,
              child: Text("Page 2"),
              height: 50,
            ),
          )),
          Expanded(child: InkWell(
            onTap: (){
              changeIndex(2);
            },
            child: Container(
              color: Colors.brown,
              child: Text("Page 3"),
              height: 50,
            ),
          )),
        ],
      ),
    );
  }
}
