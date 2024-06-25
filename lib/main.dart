import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
        padding: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
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
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 20.0, right: 20.0),
                      child: Container(
                        width: 90.w,
                        height: 9.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF4D4D4D),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.image, size: 7.5.h),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 5.0),
                                    child: Text(
                                      "Sarwat Aijaz",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      "Apple ID, iCloud, Media, & Purchases",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                  ),
                                ]),
                            Spacer(),
                            Icon(
                              Icons.chevron_right_outlined,
                              size: 4.h,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, left: 20.0, right: 20.0),
                      child: Container(
                        width: 90.w,
                        height: 52.5.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF4D4D4D),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.airplanemode_on_rounded,
                                    size: 6.h,
                                    color: Colors.yellow,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "Airplane Mode",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
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
                            Divider(
                              color: Colors.grey, // Set the line color
                              thickness: 1.0, // Set the line thickness
                              height:
                                  1.0, // Set the line height (optional for horizontal lines)
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.wifi,
                                    size: 6.h,
                                    color: Colors.blue,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "Wi-Fi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
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
                                Icon(
                                  Icons.chevron_right_outlined,
                                  size: 4.h,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey, // Set the line color
                              thickness: 1.0, // Set the line thickness
                              height:
                                  1.0, // Set the line height (optional for horizontal lines)
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.bluetooth,
                                    size: 6.h,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "Bluetooth",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 40.0),
                                  child: Row(children: [
                                    Text(
                                      "On",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    Icon(
                                      Icons.chevron_right_outlined,
                                      size: 4.h,
                                      color: Colors.grey,
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey, // Set the line color
                              thickness: 1.0, // Set the line thickness
                              height:
                                  1.0, // Set the line height (optional for horizontal lines)
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.data_exploration_rounded,
                                    size: 6.h,
                                    color: Colors.greenAccent,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "Mobile Service",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 40.0),
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    size: 4.h,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.grey, // Set the line color
                              thickness: 1.0, // Set the line thickness
                              height:
                                  1.0, // Set the line height (optional for horizontal lines)
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.hot_tub_rounded,
                                    size: 6.h,
                                    color: Colors.green,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "Personal Hotspot",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 40.0),
                                  child: Row(children: [
                                    Text(
                                      "Off",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    Icon(
                                      Icons.chevron_right_outlined,
                                      size: 4.h,
                                      color: Colors.grey,
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey, // Set the line color
                              thickness: 1.0, // Set the line thickness
                              height:
                                  1.0, // Set the line height (optional for horizontal lines)
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.network_locked,
                                    size: 6.h,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "VPN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 40.0),
                                  child: Row(children: [
                                    Text(
                                      "Not Connected",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    Icon(
                                      Icons.chevron_right_outlined,
                                      size: 4.h,
                                      color: Colors.grey,
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, left: 20.0, right: 20.0),
                      child: Container(
                        width: 90.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF4D4D4D),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.notification_add,
                                    size: 6.h,
                                    color: Colors.orange,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "Notifications",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Icon(
                                        Icons.chevron_right_outlined,
                                        size: 4.h,
                                        color: Colors.grey,
                                      ),
                                    )),
                              ],
                            ),
                            Divider(
                              color: Colors.grey, // Set the line color
                              thickness: 1.0, // Set the line thickness
                              height:
                                  1.0, // Set the line height (optional for horizontal lines)
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.multitrack_audio_outlined,
                                    size: 6.h,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "Sounds & Haptics",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Icon(
                                        Icons.chevron_right_outlined,
                                        size: 4.h,
                                        color: Colors.grey,
                                      ),
                                    )),
                              ],
                            ),
                            Divider(
                              color: Colors.grey, // Set the line color
                              thickness: 1.0, // Set the line thickness
                              height:
                                  1.0, // Set the line height (optional for horizontal lines)
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.shield_moon_outlined,
                                    size: 6.h,
                                    color: Colors.purpleAccent,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "Focus",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 40.0),
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    size: 4.h,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey, // Set the line color
                              thickness: 1.0, // Set the line thickness
                              height:
                                  1.0, // Set the line height (optional for horizontal lines)
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.timer,
                                    size: 6.h,
                                    color: Colors.purpleAccent,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 10.0),
                                  child: Text(
                                    "Screen Time",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, left: 40.0),
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    size: 4.h,
                                    color: Colors.grey,
                                  ),
                                )
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
