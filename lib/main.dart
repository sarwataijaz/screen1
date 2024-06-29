import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Responsive Sizer Example',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _isToggled() {
    setState(() {
      isTapped = !isTapped;
    });
  }

  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(top: 20.sp),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 30.0.sp, left: 20.0.sp, right: 20.0.sp),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.sp,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20.0.sp, left: 20.0.sp, right: 20.0.sp),
                      child: Container(
                        width: 90.w,
                        height: 9.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF4D4D4D),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 12.0.sp),
                              // donot put const here as our padding will be determined in runtime
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                // The ClipRRect widget doesn't modify the image itself. It clips the child widget's visible area, creating the illusion of a circular image.
                                child: Image.asset("assets/my_imagee.jpg",
                                    height: 7.5.h),
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 10.0.sp, left: 5.0.sp),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 10.0.sp, left: 15.0.sp),
                                      child: Text(
                                        "Sarwat Aijaz",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 15.0.sp),
                                      child: Text(
                                        "Apple ID, iCloud, Media, & Purchases",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(right: 13.0.sp),
                              child: Icon(
                                Icons.chevron_right_outlined,
                                size: 3.h,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 25.0.sp, left: 20.0.sp, right: 20.0.sp),
                      child: Container(
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: Color(0xFF4D4D4D),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 7.h,
                                  padding: EdgeInsets.all(12.0.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0.sp),
                                    child: Icon(
                                      Icons.airplanemode_on_rounded,
                                      size: 4.5.h,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                      top: 5.0.sp, left: 12.0.sp),
                                  child: Text(
                                    "Airplane Mode",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(right: 13.0.sp),
                                  child: Container(
                                    width: 40,
                                    height: 20,
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                      color: (isTapped)
                                          ? Colors.blue
                                          : Colors.grey,
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(100),
                                        // Adjust the radius for a more cylindrical look
                                        bottom: Radius.circular(100),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: (isTapped) ? null : 0,
                                          right: (isTapped) ? 0 : null,
                                          top: 0,
                                          child: InkWell(
                                            onTap: _isToggled,
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              alignment: (isTapped)
                                                  ? Alignment.topRight
                                                  : Alignment.topLeft,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                  border: Border.all(
                                                    color: Colors.white60,
                                                    width: 2,
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 34.0.sp),
                              child: Divider(
                                color: Colors.grey, // Set the line color
                                thickness: 0.5, // Set the line thickness
                                height:
                                    1.0, // Set the line height (optional for horizontal lines)
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 7.h,
                                  padding: EdgeInsets.all(12.0.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0.sp),
                                    child: Icon(
                                      Icons.wifi,
                                      size: 4.5.h,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                      top: 5.0.sp, left: 12.0.sp),
                                  child: Text(
                                    "Wi-Fi",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Soloplus 0318-0505881 ars..",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 13.0.sp),
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    size: 3.h,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 34.0.sp),
                              child: Divider(
                                color: Colors.grey, // Set the line color
                                thickness: 0.5, // Set the line thickness
                                height:
                                    1.0, // Set the line height (optional for horizontal lines)
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 7.h,
                                  padding: EdgeInsets.all(12.0.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0.sp),
                                    child: Icon(
                                      Icons.bluetooth,
                                      size: 4.5.h,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                      top: 5.0.sp, left: 12.0.sp),
                                  child: Text(
                                    "Bluetooth",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 40.0),
                                  child: Row(children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 5.0.sp),
                                      child: Text(
                                        "On",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 13.0.sp),
                                      child: Icon(
                                        Icons.chevron_right_outlined,
                                        size: 3.h,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 34.0.sp),
                              child: Divider(
                                color: Colors.grey, // Set the line color
                                thickness: 0.5, // Set the line thickness
                                height:
                                    1.0, // Set the line height (optional for horizontal lines)
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 7.h,
                                  padding: EdgeInsets.all(12.0.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0.sp),
                                    child: Icon(
                                      Icons.data_exploration_rounded,
                                      size: 4.5.h,
                                      color: Colors.greenAccent,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                      top: 5.0.sp, left: 12.0.sp),
                                  child: Text(
                                    "Mobile Service",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(right: 13.0.sp),
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    size: 3.h,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 34.0.sp),
                              child: Divider(
                                color: Colors.grey, // Set the line color
                                thickness: 0.5, // Set the line thickness
                                height:
                                    1.0, // Set the line height (optional for horizontal lines)
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 7.h,
                                  padding: EdgeInsets.all(12.0.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0.sp),
                                    child: Icon(
                                      Icons.hot_tub_rounded,
                                      size: 4.5.h,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                      top: 5.0.sp, left: 12.0.sp),
                                  child: Text(
                                    "Personal Hotspot",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 40.0),
                                  child: Row(children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 5.0.sp),
                                      child: Text(
                                        "Off",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 13.0.sp),
                                      child: Icon(
                                        Icons.chevron_right_outlined,
                                        size: 3.h,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 34.0.sp),
                              child: Divider(
                                color: Colors.grey, // Set the line color
                                thickness: 0.5, // Set the line thickness
                                height:
                                    1.0, // Set the line height (optional for horizontal lines)
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 7.h,
                                  padding: EdgeInsets.all(12.0.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0.sp),
                                    child: Icon(
                                      Icons.network_locked,
                                      size: 4.5.h,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                      top: 5.0.sp, left: 12.0.sp),
                                  child: Text(
                                    "VPN",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 40.0),
                                  child: Row(children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 5.0.sp),
                                      child: Text(
                                        "Not Connected",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 13.0.sp),
                                      child: Icon(
                                        Icons.chevron_right_outlined,
                                        size: 3.h,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 25.0.sp, left: 20.0.sp, right: 20.0.sp, bottom:10.0.sp),
                      child: Container(
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: Color(0xFF4D4D4D),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 7.h,
                                  padding: EdgeInsets.all(12.0.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0.sp),
                                    child: Icon(
                                      Icons.notification_add,
                                      size: 4.5.h,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                      top: 5.0.sp, left: 12.0.sp),
                                  child: Text(
                                    "Notifications",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(right: 13.0.sp),
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    size: 3.h,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 34.0.sp),
                              child: Divider(
                                color: Colors.grey, // Set the line color
                                thickness: 0.5, // Set the line thickness
                                height:
                                    1.0, // Set the line height (optional for horizontal lines)
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 7.h,
                                  padding: EdgeInsets.all(12.0.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0.sp),
                                    child: Icon(
                                      Icons.multitrack_audio_outlined,
                                      size: 4.5.h,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                      top: 5.0.sp, left: 12.0.sp),
                                  child: Text(
                                    "Sounds & Haptics",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(right: 13.0.sp),
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    size: 3.h,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 34.0.sp),
                              child: Divider(
                                color: Colors.grey, // Set the line color
                                thickness: 0.5, // Set the line thickness
                                height:
                                    1.0, // Set the line height (optional for horizontal lines)
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 7.h,
                                  padding: EdgeInsets.all(12.0.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0.sp),
                                    child: Icon(
                                      Icons.shield_moon_outlined,
                                      size: 4.5.h,
                                      color: Colors.purpleAccent,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                      top: 5.0.sp, left: 12.0.sp),
                                  child: Text(
                                    "Focus",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(right: 13.0.sp),
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    size: 3.h,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 34.0.sp),
                              child: Divider(
                                color: Colors.grey, // Set the line color
                                thickness: 0.5, // Set the line thickness
                                height:
                                    1.0, // Set the line height (optional for horizontal lines)
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 7.h,
                                  padding: EdgeInsets.all(12.0.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0.sp),
                                    child: Icon(
                                      Icons.timer,
                                      size: 4.5.h,
                                      color: Colors.purpleAccent,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(
                                      top: 5.0.sp, left: 12.0.sp),
                                  child: Text(
                                    "Screen Time",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(right: 13.0.sp),
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    size: 3.h,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
