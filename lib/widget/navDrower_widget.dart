import 'package:book_akmar/models/whoarewe_page.dart';
import 'package:book_akmar/page/all_story_page.dart';
import 'package:book_akmar/page/home_page.dart';
import 'package:book_akmar/page/my_list_page.dart';
import 'package:book_akmar/page/settings_page.dart';
import 'package:book_akmar/page/time_line_page.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class NavdrowerWidget extends StatefulWidget {
  const NavdrowerWidget({super.key});

  @override
  State<NavdrowerWidget> createState() => _NavdrowerWidgetState();
}

class _NavdrowerWidgetState extends State<NavdrowerWidget> {


  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildHeader(context),
          buildMenuItem(context),
        ],
      ),
    ),
  );
}

Widget buildHeader(BuildContext context) => Container(
  color: Color(0xff283E50),
  width: 350,
  padding: EdgeInsets.only(
    top: MediaQuery.of(context).padding.top,
    bottom: 10,
  ),
  child: Column(
    children: [
      SizedBox(height: 12),
      Image.asset(
        'images/logo.png',
        width: 100,
        height: 100,
      ),
      SizedBox(height: 12),
      Text(
        'Mohammwd Al.jrjawy',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      Text(
        'user@example.com',
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
    ],
  ),
);

Widget buildMenuItem(BuildContext context) => Container(
  padding: EdgeInsets.all(24),
  child: Wrap(
    runSpacing: 16,
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child:  Text(
          AppLocalizations.of(context)!.public,
          style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),

      Divider(
        height: 1,
        thickness: 2,
        color: Colors.black26,
        indent: 16,
        endIndent: 16,
      ),
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: Text(AppLocalizations.of(context)!.home,),
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const HomePage()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.update),
        title: Text(AppLocalizations.of(context)!.timeline,),
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const TimeLinePage()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.all_inclusive_outlined),
        title: Text(AppLocalizations.of(context)!.all,),
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const AllStoryPage()));
        },
      ),
      SizedBox(
        height: 33,
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child:  Text(
          AppLocalizations.of(context)!.myOwn,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),

      Divider(
        height: 1,
        thickness: 2,
        color: Colors.black26,
        indent: 16,
        endIndent: 16,
      ),
      ListTile(
        leading: const Icon(Icons.favorite_outline),
        title: Text(AppLocalizations.of(context)!.favorite,),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.add_chart_outlined),
        title: Text(AppLocalizations.of(context)!.myList,),
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const MyListPage()));
        },
      ),
      SizedBox(
        height: 33,
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child:  Text(
          AppLocalizations.of(context)!.other,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      Divider(
        height: 1,
        thickness: 2,
        color: Colors.black26,
        indent: 16,
        endIndent: 16,
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: Text(AppLocalizations.of(context)!.setting,),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SettingPage()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.share),
        title: Text(AppLocalizations.of(context)!.shareApp,),
        onTap: () {
          Share.share('Check out this amazing app!');
        },
      ),
      ListTile(
        leading: const Icon(Icons.upload),
        title: Text(AppLocalizations.of(context)!.updateApp,),
        onTap: () async {
          const url = 'https://play.google.com/store/apps/details?id=com.example.yourapp'; // رابط تحديث التطبيق في متجر Google Play
          // ignore: deprecated_member_use
          if (await canLaunch(url)) {
            // ignore: deprecated_member_use
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
      ),


      ListTile(
        leading: const Icon(Icons.question_mark),
        title: Text(AppLocalizations.of(context)!.aboutUs,),
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const WhoAreWePage()));
        },
      ),
    ],
  ),
);
