import 'package:book_akmar/models/storys.dart';
import 'package:book_akmar/page/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MovingCardScreen extends StatefulWidget {
  @override
  _MovingCardScreenState createState() => _MovingCardScreenState();
}

class _MovingCardScreenState extends State<MovingCardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Story> _storyList = Story.storyList;


    bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
    }

    return SizedBox(
      height: size.height * .3,
      child: ListView.builder(
          itemCount: _storyList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: DetailPage(
                          storyId: _storyList[index].storyId,
                        ),
                        type: PageTransitionType.bottomToTop));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.only(right: 10, left: index == 0? 10 : 0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(6, -6)
                      )
                    ]
                  ),
                  child: GridTile(
                    header: Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            bool isFavorite =
                                toggleIsFavorated(_storyList[index].isFavorated);
                            _storyList[index].isFavorated = isFavorite;
                          });
                        },
                        icon: Icon(
                          _storyList[index].isFavorated == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.red,
                        ),
                        iconSize: 30,
                      ),
                    ),
                    footer: Container(
                      width: double.infinity,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.black54),
                      child: Text(
                          _storyList[index].plantName,
                        style: TextStyle(
                          shadows: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(3, 3),
                            )
                          ],
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    child: Image.asset(
                      _storyList[index].imageURL,
                      // width: 250,
                      // height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Container(
              //   width: 200,
              //   margin: const EdgeInsets.symmetric(horizontal: 10),
              //   child: Stack(
              //     children: [
              //       Positioned(
              //         top: 10,
              //         right: 20,
              //         child: Container(
              //           height: 50,
              //           width: 50,
              //           child: IconButton(
              //             onPressed: () {
              //               setState(() {
              //                 bool isFavorite = toggleIsFavorated(
              //                     _storyList[index].isFavorated);
              //                 _storyList[index].isFavorated =
              //                     isFavorite;
              //               });
              //             },
              //             icon: Icon(
              //               _storyList[index].isFavorated == true
              //                   ? Icons.favorite
              //                   : Icons.favorite_border,
              //               color: Colors.red,
              //             ),
              //             iconSize: 30,
              //           ),
              //
              //         ),
              //       ),
              //
              //
              //       //Image
              //       Align(
              //         alignment: Alignment(2, 0),
              //           child: Image.asset(
              //         _storyList[index].imageURL,
              //         width: 250,
              //         height: 250,
              //         fit: BoxFit.contain,
              //       )),
              //
              //       Positioned(
              //         bottom: 15,
              //         left: 20,
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             //category
              //             Text(
              //               _storyList[index].category,
              //               style: const TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 16,
              //               ),
              //             ),
              //             //NAME
              //             Text(
              //               _storyList[index].plantName,
              //               style: const TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              //
              // ),
            );
          }),
    );
  }
}
