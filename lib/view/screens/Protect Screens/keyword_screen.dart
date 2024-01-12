import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';

class KeywordScreen extends StatefulWidget {
  const KeywordScreen({Key? key}) : super(key: key);

  @override
  State<KeywordScreen> createState() => _KeywordScreenState();
}

class _KeywordScreenState extends State<KeywordScreen> {
  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff283a68),
      appBar: AppBar(
        backgroundColor: Color(0xff283a68),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 7.w,)),
        title: Text(
          'Random Keyboard',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
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
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(image: AssetImage('assets/kbbg.png'),width: 8.w,),
                    title: Text(
                      'Random keyword',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      'Numeric keyword is randomly arranged to prevent others from peeping to ensure security password.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.sp
                      ),
                    ),
                    trailing: AdvancedSwitch(
                      controller: _controller,
                      activeColor: Colors.green,
                      inactiveColor: Colors.grey,
                      width: 9.w,
                      height: 2.h,
                      enabled: true,
                      disabledOpacity: 0.5,

                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
