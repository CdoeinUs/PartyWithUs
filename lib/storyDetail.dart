import 'package:flutter/material.dart';
import 'story_model.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key, required this.story}) : super(key: key);
  final StoryInfo story;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Container(
          child: Scrollbar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(story.place, style: TextStyle(color: Colors.grey),),
                Text(story.title,
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                SizedBox(
                  height: 8,
                ),
                Text('${story.date} | ${story.people.length} | ${story.time}(${story.duration})', style: TextStyle(color: Colors.grey)),
                const Divider(
                  color: Colors.grey,
                  height: 10,
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                        child: Image(
                          image: AssetImage(story.storyImgPath),
                        )),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(story.content)
              ],

            ),
          ),
        ),
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomRight,
            child: Semantics(
              container: true,
              header: true,
              child: MaterialButton(
                  onPressed: () {},
                  color: Colors.purple,
                  textColor: Colors.white,
                  child: Icon(Icons.assignment,
                    size: 24,),
                shape: CircleBorder(),
                padding: EdgeInsets.all(16),


              ),
            ),
          ))]
      ),
    );
  }
}

// class StorysDetail extends StatefulWidget {
//   const StorysDetail({Key? key}) : super(key: key);
//
//   @override
//   State<StorysDetail> createState() => _StorysDetailState();
// }

// class _StorysDetailState extends State<StorysDetail> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body : Column(
//        children: [
//          Text("회기"),
//          Text("PWU 12월 크리스마스 모임"),
//          Text("2023-03-25"),
//          Image.asset("image/program1.png"),
//          Text("여기부분은 유저가 작성해야하는 부분인가?",style: TextStyle(
//            fontSize: 80
//          ),)
//        ],
//       )
//     );
//   }
// }