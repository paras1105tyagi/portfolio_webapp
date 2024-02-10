import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  urlLauncher(String imgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(imgPath, color: Colors.black, width: 35),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/image.png"),
              ),
            ),
            SizedBox(height: 15.0),
            SansBold("Paras Tyagi", 30.0),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher("assets/instagram2.svg",
                    "https://www.instagram.com/tomcruise"),
                urlLauncher(
                    "assets/twitter.svg", "https://www.twitter.com/tomcruise"),
                urlLauncher(
                    "assets/github.svg", "https://www.github.com/paulinaknop"),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: Row(
          children: [
            Spacer(flex: 3),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          // First page
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold("Hello I'm", 15),
                    ),
                    SizedBox(height: 15.0),
                    SansBold("Paras Tyagi", 55.0),
                    Sans("Flutter Developer", 30.0),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20.0),
                        Sans("parastyagi@1105gmail.com", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20.0),
                        Sans("9456265714", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20.0),
                        Sans("IIIT UNA, Una, Himachal Pradesh, India", 15.0),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.00,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.00,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.00,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        "assets/image-circle.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //change1
          // Second page
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/web.jpg", height: widthDevice / 1.9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40.0),
                    SizedBox(height: 15.0),
                    Sans(
                      "Hello,I'm Paras I specialise in Flutter Development.",
                      15.0,
                    ),
                    Sans(
                        "I strive to ensure astounding performance wit state of ",
                        15.0),
                    Sans(
                        "the art security for Android, Ios, Web, Mac, Linux and Windows",
                        15.0),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Flutter", 15.0),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("FireBase", 15.0),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Android", 15),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Ios", 15),
                        ),
                        SizedBox(width: 7.0),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Third page

          Container(
              height: heightDevice / 1.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold("What I do?", 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCardWeb(
                        imagePath: "assets/webL.png",
                        text: "Web development",
                      ), //card

                      AnimatedCardWeb(
                        imagePath: "assets/app.png",
                        text: "App development",
                        fit: BoxFit.contain,
                        reverse: true,
                      ),
                      AnimatedCardWeb(
                        imagePath: "assets/firebase.png",
                        text: "Back-end development",
                      ),
                    ],
                  )
                ],
              )),

          // Fourth page

          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          width: 350.0,
                          heading: "First Name ",
                          hintText: "Please Type your first name",
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Email",
                          width: 350.0,
                          hintText: "Please enter your email address",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                            heading: "Last name",
                            width: 350.0,
                            hintText: "Please type your last name"
                            // maxLine: maxLine))
                            ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Phone Number",
                          width: 350.0,
                          hintText: "Please type your phone number",
                        )
                      ],
                    )
                  ],
                ),
                TextForm(
                    heading: "Message",
                    width: widthDevice / 1.5,
                    hintText: "Please type your message",
                    maxLines: 10),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
