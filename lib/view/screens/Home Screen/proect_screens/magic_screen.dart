import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../global_widget/app_color.dart';
import '../../../../global_widget/global_widget.dart';
import '../../Protect Screens/cover_screen.dart';
import '../../Protect Screens/icon_screen.dart';
import '../../Protect Screens/keyword_screen.dart';

class MagicScreen extends StatefulWidget {
  const MagicScreen({Key? key}) : super(key: key);

  @override
  State<MagicScreen> createState() => _MagicScreenState();
}

class _MagicScreenState extends State<MagicScreen> {
  final _controllerIcon = ValueNotifier<bool>(false);
  final _controllerKey = ValueNotifier<bool>(false);
  final _controllerCover = ValueNotifier<bool>(false);
  final _controllerAnim = ValueNotifier<bool>(false);

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
          'Magic',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => IconScreen(),));
                    },
                    child: recommendContainer(
                        image: 'assets/maskbg.png',
                        title: 'Icon Camouflage',
                        subtitle: 'Disguise the AppLock icon as another icon',
                        controller: _controllerIcon
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => KeywordScreen(),));
                    },
                    child: recommendContainer(
                        image: 'assets/kbbg.png',
                        title: 'Random Keyboard',
                        subtitle: 'Numeric keyboard is randomly\narrange to prevent others form\npeeping to ensure password security ',
                        controller: _controllerKey
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CoverScreen(),));
                    },
                    child: recommendContainer(
                        image: 'assets/eyesbg.png',
                        title: 'Cover',
                        subtitle: 'Apply cover to improve security',
                        controller: _controllerCover
                    ),
                  ),
                  recommendContainer(
                      image: 'assets/booksbg.png',
                      title: 'Animation',
                      subtitle: 'Show random animations when unlocking apps',
                      controller: _controllerAnim
                  ),
                  SizedBox(height: 2.h,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
