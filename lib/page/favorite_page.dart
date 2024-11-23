import 'package:book_akmar/models/storys.dart';
import 'package:book_akmar/widget/story_widget.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  final List<Story> favoritedStory;
  const FavoritePage({Key? key, required this.favoritedStory})
      : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.favoritedStory.isEmpty
          ? Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Icon(Icons.favorite),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Your favorited Plants',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
          ],
        ),
      )
          : Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        height: size.height * .5,
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: widget.favoritedStory.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisExtent: 210,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                StoryWidget(index: index, storyList: widget.favoritedStory),
                Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}
