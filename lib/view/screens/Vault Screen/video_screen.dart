import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../../../DBHelper/video_DB.dart';
import '../../../Models/video_model.dart';
import '../../../global_widget/app_color.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoDB videoDB = VideoDB();
  final ImagePicker videoPicker = ImagePicker();
  List<XFile>? videoFileList = [];

  void selectImages() async {
    final List<XFile>? selectedVideos = await
    videoPicker.pickMultipleMedia();
    if (selectedVideos!.isNotEmpty) {
      //await ImageDatabase.instance.insertImage(selectedImages);
      videoFileList!.addAll(selectedVideos);
    }
    await videoDB.saveVideosToDatabase(selectedVideos);
    print("Image List Length:" + videoFileList!.length.toString());
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
          'Video',
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
      body: FutureBuilder<List<VideoModel>>(
        future: videoDB.fetchVideosFromDatabase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final List<VideoModel> videos = snapshot.data ?? [];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1
                  // crossAxisSpacing: 4,
                  // mainAxisSpacing: 4,
                ),
                itemCount: videos.length,
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
                                child: Image.file(File(videos[index].videoPath),fit: BoxFit.cover,)
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
