import 'package:flutter/material.dart';
import 'story_model.dart';
import 'storyDetail.dart';

class story extends StatelessWidget {
  const story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: testStory(context).length,
                      itemBuilder: (BuildContext context, int index) {
                        return storyItem(story: testStory(context)[index]);
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class storyItem extends StatelessWidget {
  const storyItem({Key? key, required this.story, this.shape})
      : super(key: key);

  // This height will allow for all the Card's content to fit comfortably within the card.
  static const height = 255.0;
  final StoryInfo story;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: SizedBox(
        height: height,
        child: Card(
          // This ensures that the Card's children (including the ink splash) are clipped correctly.
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StoryPage(story: story
                      )));
            },
            // Generally, material cards use onSurface with 12% opacity for the pressed state.
            splashColor:
                Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
            // Generally, material cards do not have a highlight overlay.
            highlightColor: Colors.transparent,
            child: Semantics(
              child: StoryContent(story: story),
            ),
          ),
        ),
      ),
    );
  }
}

class StoryContent extends StatelessWidget {
  const StoryContent({Key? key, required this.story}) : super(key: key);

  final StoryInfo story;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.titleSmall!;
    final descriptionStyle = theme.textTheme.bodySmall!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 160,
          child: Stack(
            children: [
              Positioned.fill(
                child: Ink.image(
                  image: AssetImage(
                    story.storyImgPath,
                  ),
                  fit: BoxFit.cover,
                  child: Container(),
                ),
              ),

            ],
          ),
        ),
        Semantics(
          container: true,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: DefaultTextStyle(
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: descriptionStyle.copyWith(color: Colors.black54),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    story.place,
                    style: descriptionStyle.copyWith(color: Colors.black54),
                  ),
                  Text(
                    story.title,
                    style: titleStyle,
                  ),
                  Text(
                    "${story.date} | ${story.people.length} | ${story.time}(${story.duration})",
                    style: descriptionStyle.copyWith(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
