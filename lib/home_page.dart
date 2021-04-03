import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String url = "http://marind.com.ar";
  TextStyle defaultStyle = TextStyle(color: Colors.black, fontSize: 12);
  TextStyle linkStyle = TextStyle(color: Colors.blue.shade900, fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              horizontalTitleGap: 4.0,
              leading: circleContainer(48),
              title: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  'Friend Name',
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Today at 19:33',
                    style: TextStyle(fontSize: 14),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.public,
                        color: Colors.grey,
                        size: 14,
                      ),
                      onPressed: () {})
                ],
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: Text('I want this mockup so bad!!'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: RichText(
                text: TextSpan(
                  style: defaultStyle,
                  children: <TextSpan>[
                    TextSpan(text: 'Found it at '),
                    TextSpan(
                        text: url,
                        style: linkStyle,
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: InkWell(
                child: Text(
                  'See translation',
                  style: linkStyle,
                ),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.thumbsUp,
                          color: Colors.grey, size: 16),
                      Text(
                        'Like',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.commentAlt,
                          color: Colors.grey, size: 16),
                      Text('Comment', style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.share,
                          color: Colors.grey, size: 16),
                      Text('Share', style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: Colors.grey.shade100,
              child: Column(
                children: [
                  SizedBox(height: 8),
                  Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
                    child: Row(
                      children: [
                        Image.asset('images/icons/like.png',
                            width: 16, height: 16),
                        Image.asset('images/icons/heart.png',
                            width: 16, height: 16),
                        Image.asset('images/icons/wow.png',
                            width: 16, height: 16),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text('1.035'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
                    child: Row(
                      children: [
                        circleContainer(32),
                        SizedBox(width: 4),
                        Expanded(
                          child: Container(
                            height: 32,
                            decoration: BoxDecoration(
                                color: Colors.white, // border color
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: [
                                SizedBox(width: 4),
                                Text(
                                  'Write something...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(),
                                FaIcon(FontAwesomeIcons.smile,
                                    color: Colors.grey, size: 16),
                                SizedBox(width: 4),
                                FaIcon(FontAwesomeIcons.camera,
                                    color: Colors.grey, size: 16),
                                SizedBox(width: 4),
                                FaIcon(FontAwesomeIcons.image,
                                    color: Colors.grey, size: 16),
                                SizedBox(width: 4),
                                FaIcon(FontAwesomeIcons.image,
                                    color: Colors.grey, size: 16),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:16)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget circleContainer(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.25), // border color
          borderRadius: BorderRadius.all(Radius.circular(size))),
    );
  }
}
