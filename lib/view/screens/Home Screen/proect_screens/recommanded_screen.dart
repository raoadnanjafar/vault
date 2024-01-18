import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../global_widget/app_color.dart';
import '../../../../global_widget/custom_dialoge.dart';
import '../../../../global_widget/global_widget.dart';

class RecommendedScreen extends StatefulWidget {
  const RecommendedScreen({Key? key}) : super(key: key);

  @override
  State<RecommendedScreen> createState() => _RecommendedScreenState();
}

class _RecommendedScreenState extends State<RecommendedScreen> {
  final _controller = ValueNotifier<bool>(false);
  final _controllerKeep = ValueNotifier<bool>(false);
  final _controllerBattery = ValueNotifier<bool>(false);

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
          'Recommended',
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
           // SizedBox(height: 2.h,),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      customDialogue(
                          image: 'assets/security.png',
                          title: 'Advance Protection',
                          context: context,
                          buttonText: 'ACTIVATE',
                          content: 'The environmental protection essay is a great way to assist the little ones in understanding how to protect the environment.'
                      );
                    },
                    child: recommendContainer(
                        image: 'assets/roborte.png',
                        title: 'Advance Protection',
                        subtitle: 'Activate now, perfect protection and\nmore secure',
                        controller: _controller
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      customDialogue(
                          image: 'assets/security.png',
                          title: 'Keep Live',
                          context: context,
                          buttonText: 'ENABLE',
                          content: 'There is a famous proverb stating, “Health is Wealth,” which is self-explanatory.When we fall sick, it makes us irritated and unstable.'
                      );
                    },
                    child: recommendContainer(
                        image: 'assets/locbg.png',
                        title: 'Keep Live',
                        subtitle: 'Enable this feature can keep\nAppLock running stably and protect\nyour privacy continuously, highly\nrecommended!',
                        controller: _controllerKeep
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      customDialogue(
                          image: 'assets/battbg.png',
                          title: 'Power saving mode',
                          context: context,
                          buttonText: 'ACTIVATE',
                          content: 'Power saving mode is a tool that helps you extend the battery life of your Galaxy device by disabling certain functions, features or even apps, if you wish.'
                      );
                    },
                    child: recommendContainer(
                        image: 'assets/battery.png',
                        title: 'Power Saving Mode',
                        subtitle: 'Enable this service can decrease\n50% power usage and protect\nenvironment, highly recommended!',
                        controller: _controllerBattery
                    ),
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
