import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../DBHelper/audio_DB.dart';
import '../../../global_widget/app_color.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({Key? key}) : super(key: key);

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  TextEditingController folderController = TextEditingController();
  AudioDB audioDB = AudioDB();
  int? ind = 0;

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
          'Audio',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
      ),
      body: ind == 0 && audioDB.fetchNamesFromDatabase() == null ?
      Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 35.h,),
            GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        surfaceTintColor: Colors.white,
                        title: Center(
                          child: Text(
                            'Folder Name',
                            style: TextStyle(
                                color: appColor,
                                //Colors.black,
                                fontSize: 12.sp
                            ),
                          ),
                        ),
                        content: Container(
                          height: 17.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 85.w,
                                height: 5.5.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey,width: 0.5)
                                ),
                                child: TextFormField(
                                  controller: folderController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Folder Name',
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade300,
                                          fontSize: 11.sp
                                      ),
                                      contentPadding: EdgeInsets.only(left: 2.w)
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 6.h,
                                      width: 32.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(width: 2,color: Color(0xffe9eaee))
                                      ),
                                      child: Center(
                                        child: Text(
                                          'CANCEL',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2.w,),
                                  GestureDetector(
                                    onTap: () async {
                                      ind = 1;
                                      setState(() {

                                      });
                                      final String name = folderController.text.trim();
                                      if (name.isNotEmpty) {
                                        await audioDB.saveNameToDatabase(name);
                                       // Close dialog
                                      }
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 6.h,
                                      width: 32.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xff00b7a5),
                                        borderRadius: BorderRadius.circular(10),
                                        // border: Border.all(width: 2,color: Color(0xffe9eaee))
                                      ),
                                      child: Center(
                                        child: Text(
                                          'SAVE',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),

                        ),

                      );
                    },);
                },
                child: Icon(Icons.add,size: 8.h,color: Colors.grey,)),
            Text(
              'Create new folder',
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.grey
              ),
            ),


          ],
        ),
      ) :
          FutureBuilder<List<String>>(
            future: audioDB.fetchNamesFromDatabase(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                final List<String> names = snapshot.data ?? [];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.6,
                        crossAxisSpacing: 3.w,
                      mainAxisSpacing: 2.h
                    ),
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return Expanded(
                        child: GestureDetector(
                          onLongPress: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: Colors.white,
                                  surfaceTintColor: Colors.white,
                                  title: Center(
                                    child: Text(
                                      'Delete Folder',
                                      style: TextStyle(
                                          color: appColor,
                                          //Colors.black,
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ),
                                  content: Container(
                                    height: 17.h,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Are you sure to delete this folder ?',
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            color: Colors.grey
                                          ),
                                        ),
                                        SizedBox(height: 2.h,),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: 6.h,
                                                width: 32.w,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(width: 2,color: Color(0xffe9eaee))
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'CANCEL',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 13.sp,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 2.w,),
                                            GestureDetector(
                                              onTap: ()  {
                                                final String name = folderController.text.trim();
                                                 audioDB.deleteName(names[index]);
                                                setState(() {
                                                  audioDB.fetchNamesFromDatabase();
                                                });
                                                // final String name = folderController.text.trim();
                                                // if (name.isNotEmpty) {
                                                //   await audioDB.deleteName(name);
                                                //   setState(() {
                                                //
                                                //   });
                                                //   // Close dialog
                                                // }
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: 6.h,
                                                width: 32.w,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff00b7a5),
                                                  borderRadius: BorderRadius.circular(10),
                                                  // border: Border.all(width: 2,color: Color(0xffe9eaee))
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Delete',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13.sp,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),

                                  ),

                                );
                              },);
                          },
                          child: Container(
                           // height: 14.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300,width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 3.w),
                                    child: Image(image: AssetImage('assets/file.png'),height: 5.h,color: appColor,width: 11.w,),
                                  ),
                                  Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                                          child: Text(
                                            '0',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                        //SizedBox(height: 2.h,),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                                          child: Text(
                                            names[index],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11.sp,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            },
          ),
      floatingActionButton: audioDB.fetchNamesFromDatabase() != null ?
          FloatingActionButton(
            backgroundColor: appColor,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    surfaceTintColor: Colors.white,
                    title: Center(
                      child: Text(
                        'Folder Name',
                        style: TextStyle(
                            color: appColor,
                            //Colors.black,
                            fontSize: 12.sp
                        ),
                      ),
                    ),
                    content: Container(
                      height: 17.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 85.w,
                            height: 5.5.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(color: Colors.grey,width: 0.5)
                            ),
                            child: TextFormField(
                              controller: folderController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Folder Name',
                                  hintStyle: TextStyle(
                                      color: Colors.grey.shade300,
                                      fontSize: 11.sp
                                  ),
                                  contentPadding: EdgeInsets.only(left: 2.w)
                              ),
                            ),
                          ),
                          SizedBox(height: 2.h,),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 6.h,
                                  width: 32.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(width: 2,color: Color(0xffe9eaee))
                                  ),
                                  child: Center(
                                    child: Text(
                                      'CANCEL',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 2.w,),
                              GestureDetector(
                                onTap: () async {
                                  ind = 1;
                                  setState(() {

                                  });
                                  final String name = folderController.text.trim();
                                  if (name.isNotEmpty) {
                                    await audioDB.saveNameToDatabase(name);
                                    // Close dialog
                                  }
                                  Navigator.pop(context);
                                  folderController.clear();
                                },
                                child: Container(
                                  height: 6.h,
                                  width: 32.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xff00b7a5),
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(width: 2,color: Color(0xffe9eaee))
                                  ),
                                  child: Center(
                                    child: Text(
                                      'SAVE',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),

                    ),

                  );
                },);
          },
          child: Icon(Icons.add,color: Colors.white,),
          ) : null
    );
  }
}
