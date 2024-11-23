import 'package:book_akmar/widget/navDrower_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({super.key});

  @override
  State<TimeLinePage> createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavdrowerWidget(),
      appBar: AppBar(
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
    );
  }
}
