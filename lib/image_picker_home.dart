import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ImagePickerHome extends StatefulWidget {
  const ImagePickerHome({super.key});

  @override
  State<ImagePickerHome> createState() => _ImagePickerHomeState();
}

class _ImagePickerHomeState extends State<ImagePickerHome> {

 File? file;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: mainBody(),
      ),
    );
  }
  
  Widget mainBody(){
   return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Container(
          width: double.maxFinite,

          child: file!=null?Image.file(file!):null,
        )),
        InkWell(
          onTap: ()async {

            FilePickerResult? result = await FilePicker.platform.pickFiles();

            try {
              if (result != null) {
                print("file selected");
                 file = File(result.files.single.path!);
                 setState(() {

                 });
              } else {
                print("file not selected");
                // User canceled the picker
              }
            }
            catch(e)
            {
              print("Error : $e");
            }


          },
          child: Container(
            color: Colors.deepPurple,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text("Select Image", style: TextStyle(color: Colors.white),),
          ),
        )
      ],
    );
  }
}
