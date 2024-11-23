// ignore_for_file: deprecated_member_use

import 'package:book_akmar/widget/navDrower_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class WhoAreWePage extends StatelessWidget {
  const WhoAreWePage({super.key});

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavdrowerWidget(),
      appBar: AppBar(
        title: Text(
          'Who Are We?',
          style: TextStyle(color: Colors.white70),
        ),
        backgroundColor: Color(0xff283E50),
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(
                'icons/vector.svg',
                width: 5,
                height: 5,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Us',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: Color(0xff283E50)),
              ),
              SizedBox(height: 16),
              Text(
                'We are a team of passionate developers dedicated to creating amazing applications. Our mission is to provide high-quality software solutions that meet the needs of our users.',
                style: TextStyle(fontSize: 16,color: Color(0xae020202)),
              ),
              SizedBox(height: 16),
              Text(
                'Our Team',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff283E50)),
              ),
              SizedBox(height: 16),
              Text(
                'Our team consists of experienced developers, designers, and project managers who work together to deliver the best possible products.',
                style: TextStyle(fontSize: 16,color: Color(0xae020202)),
              ),
              SizedBox(height: 32),
              Text(
                'Contact Us',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff283E50)),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () => _launchURL('mailto:q2df2003@gmail.com'),
                child: Row(
                  children: [
                    Image.network("https://img.icons8.com/3d-fluency/94/google-logo.png",width: 20,height: 20,),
                    Text(
                      '  : q2df2003@gmail.com',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              InkWell(
                onTap: () => _launchURL('https://wa.me/+97059-223-8378'),
                child: Row(
                  children: [
                    Image.network("https://img.icons8.com/color/48/whatsapp--v1.png",width: 25,height: 25,),
                    Text(
                      '  : +97059-223-8378',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              InkWell(
                onTap: () => _launchURL('https://www.instagram.com/q_2df'),
                child: Row(
                  children: [
                    Image.network("https://img.icons8.com/3d-fluency/94/instagram-logo.png",height: 25,width: 25,),
                    Text(
                      '  : @q_2df',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
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
