import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:switcher_button/switcher_button.dart';
class SharedPrefHome extends StatefulWidget {
  const SharedPrefHome({super.key});

  @override
  State<SharedPrefHome> createState() => _SharedPrefHomeState();
}

class _SharedPrefHomeState extends State<SharedPrefHome> {

  bool isDarkMode=true;


    SharedPreferences? prefs;
    int x=10;
    int? y;


  void initPref()async{
    prefs = await SharedPreferences.getInstance();
    isDarkMode=prefs!.getBool("isDark")??true;
    setState(() {

    });
  }


  @override
  void initState() {
    super.initState();
    initPref();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: isDarkMode?Colors.blueGrey:Colors.white,
      body: mainBody(),
    ));
  }

  Widget mainBody(){
    return Center(
      child: Container(
        child:myButton(),
      ),
    );
  }


  Widget myButton(){
    return InkWell(
      onTap: ()async{
        isDarkMode=!isDarkMode;
        await prefs!.setBool("isDark", isDarkMode);
        setState(() {

        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isDarkMode?Colors.white:Colors.black
        ),
        height: 30,
        width: 50,
      ),
    );
  }


}
