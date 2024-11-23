import 'package:book_akmar/page/home_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xff283E50),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.navigate_before_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(width: 80),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('images/logo.png'),
                  ),
                  SizedBox(height: 20),

                  Container(
                    width: 80,
                    height: 40,
                    child: Center(
                      child: Text('Edit',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff283E50),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.person_rounded),
                          title: Text('Name'),
                          subtitle: Text('Mohammed Al.Jerjawy'),

                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 2,
                    color: Colors.black26,
                    indent: 16,
                    endIndent: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.lightbulb_circle),
                          title: Text('User'),
                          subtitle: Text('q_2df'),

                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 2,
                    color: Colors.black26,
                    indent: 16,
                    endIndent: 16,
                  ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('m123@email.com'),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
        ],
      ),
    ),
    );
  }
}
