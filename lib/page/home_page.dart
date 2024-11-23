import 'package:book_akmar/models/storys.dart';
import 'package:book_akmar/page/profile_page.dart';
import 'package:book_akmar/widget/dialogFilter.dart';
import 'package:book_akmar/widget/movingCard_screen.dart';
import 'package:book_akmar/widget/navDrower_widget.dart';
import 'package:book_akmar/widget/story_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Story> _storyList = Story.storyList;


    return Scaffold(
      //Navigtor Drower
      drawer: NavdrowerWidget(),
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.home,
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
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  child: ProfilePage(),
                  type: PageTransitionType.rightToLeft,
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 8, right: 12),
              child: CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage(
                  'images/logo.png',
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xff283E50),
              child: Container(
                height: 170,
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Text(AppLocalizations.of(context)!.hi,
                                  style: TextStyle(color: Colors.white, fontSize: 25)),
                              Text(
                                'Mohammed',
                                style: TextStyle(color: Colors.white, fontSize: 25),
                              ),
                            ],
                          )),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          width: 280,

                          //Search
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.black54.withOpacity(.5),
                                ),
                                 Expanded(
                                  child: TextField(
                                    showCursor: false,
                                    decoration: InputDecoration(
                                      hintText: AppLocalizations.of(context)!.search,
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),


                        Dialogfilter(),
                        SizedBox(
                          width: 5,
                        ),
                        IconButton(
                          onPressed: () {
                            SecondDialog.showSecondDialog(context);                          },
                          icon: Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppLocalizations.of(context)!.famous,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            //PageView 5s
            MovingCardScreen(),

            //Story
            Container(
              padding: const EdgeInsets.only(left: 16, bottom: 20, top: 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  AppLocalizations.of(context)!.newStory,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: _storyList.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 210,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      StoryWidget(index: index, storyList: _storyList),
                      Divider(),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
