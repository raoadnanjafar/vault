import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vault/view/screens/Theme%20Screen/themes_screen.dart';

import 'background_screen.dart';
import 'installed_screen.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffe9eaef),
        appBar: AppBar(
          backgroundColor: Color(0xff283a68),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: Colors.white,size: 7.w,)),
          title: Text(
            'Themes',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold
            ),
          ),
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            //labelStyle: TextStyle(color: Colors.white),
            tabs: [
              Tab(text: 'Background',),
              Tab(text: 'Themes',),
              Tab(text: 'Installed',),
            ],
          ),
          actions: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.w),
              child: Icon(Icons.search,color: Colors.white,size: 7.w,),
            )
          ],
        ),
        body: TabBarView(
          children: [
            BackgroundScreen(),
            ThemesScreen(),
            InstalledScreen()
          ],
        ),
      ),
    );
  }
}
