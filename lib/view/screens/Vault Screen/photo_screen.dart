import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../../../DBHelper/image_DB.dart';
import '../../../Models/image_model.dart';
import '../../../global_widget/app_color.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  ImageDB imageDB = ImageDB();
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await
    imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      //await ImageDatabase.instance.insertImage(selectedImages);
      imageFileList!.addAll(selectedImages);
    }
    await imageDB.saveImagesToDatabase(selectedImages);
    print("Image List Length:" + imageFileList!.length.toString());
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9eaef),
      appBar: AppBar(
        backgroundColor: appColor,
        //Color(0xff283a68),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 6.w,)),
        title: Text(
          'Photo',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          selectImages();
        },
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: appColor,
      ),
      body: FutureBuilder<List<ImageModel>>(
        future: imageDB.fetchImagesFromDatabase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final List<ImageModel> images = snapshot.data ?? [];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1

                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.only(bottom: 2.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.file(File(images[index].imagePath),fit: BoxFit.cover,)
                            ),
                          ),
                        ),
                        SizedBox(width: 3.w,)
                      ],
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
