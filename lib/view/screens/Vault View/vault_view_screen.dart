import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Cloud/cloud_view_screen.dart';

class vaultView extends StatefulWidget {
  const vaultView({Key? key}) : super(key: key);

  @override
  State<vaultView> createState() => _vaultViewState();
}

class _vaultViewState extends State<vaultView> {
  List<String>? namelist = ['Photo', 'Video', 'Audio', 'File', 'APK', 'Clean'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff283a68),
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: const Icon(CupertinoIcons.arrow_left, color: Colors.white)),
        title: const Text('Vault', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Wrap(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CloudViewScreen(),));
                  },
                  child: SizedBox(
                    height: 3.h,
                    width: 8.w,
                    child: Center(
                      child: Image.asset('assets/cloud.png',color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 2.w,),
                const Icon(Icons.settings, color: Colors.white,),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 8.0, // spacing between rows
                    crossAxisSpacing: 8.0, // spacing between columns
                    childAspectRatio: 1.5
                ),
                padding: const EdgeInsets.all(8.0), // padding around the grid
                itemCount: 6, // total number of items
                itemBuilder: (context, index) {
                  return Card(
                    //elevation: 2,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow:  const [
                        BoxShadow(
                        color: Colors.greenAccent,
                        offset: Offset(
                          0.1,
                          0.1,
                        ),
                        blurRadius: 3.0,
                        spreadRadius: 1.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                      ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 5.h,
                                width: 10.w,
                                child: Image.asset('assets/image.png'),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('----'),
                                  Text(namelist![index]),

                                ],
                              )
                            ],
                          ),
                        ),
                      ), // color of grid items

                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
