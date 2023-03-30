import 'package:flutter/material.dart';
import 'program_model.dart';
import 'storyDetail.dart';

class storyPage extends StatefulWidget {
  const storyPage({Key? key}) : super(key: key);

  @override
  State<storyPage> createState() => _storyPageState();
}

class _storyPageState extends State<storyPage> {
  static List<String> programTitle = [
    'PWU 12월 크리스마스 모임',
    'PWU 11월 크리스마스 모임',
  ];
  static List<String> imagePath = [
    'image/program1.png',
    'image/program2.png',
  ];
  static List<String> programDetail = [
    '크리스마스엔 따뜻한 뱅쇼 한 잔 어때요?',
    '지친 여행자를 위한 위로의 레시피',
  ];

  final List<Program> programData = List.generate(
      programTitle.length,
      (index) =>
          Program(programTitle[index], programDetail[index], imagePath[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          const Divider(
            color: Colors.grey,
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 8,
          ),
          Row(
              //장소, 모임, 가격 필터선택
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: Text('서울 회기동'),
                      value: 'fast_speed',
                    ),
                    PopupMenuItem(
                      child: Text('서울 전농동'),
                      value: 'medium_speed',
                    ),
                    PopupMenuItem(
                      child: Text('서울 송파동'),
                      value: 'slow_speed',
                    )
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200]),
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          '장소',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  onSelected: (String value) {
                    print('Selected: $value');
                  },
                ),
                PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: Text('12월 크리스마스 모임'),
                      value: 'easy',
                    ),
                    PopupMenuItem(
                      child: Text('11월 크리스마스 모임'),
                      value: 'medium',
                    ),
                    PopupMenuItem(
                      child: Text('10월 크리스마스 모임'),
                      value: 'hard',
                    )
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200]),
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          '모임',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  onSelected: (String value) {
                    print('Selected: $value');
                  },
                ),
                PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: Text('10000원 이하'),
                      value: 'sweet',
                    ),
                    PopupMenuItem(
                      child: Text('10000원~20000원'),
                      value: 'salty',
                    ),
                    PopupMenuItem(
                      child: Text('20000원~'),
                      value: 'tasty',
                    )
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200]),
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          '가격',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  onSelected: (String value) {
                    print('Selected: $value');
                  },
                )
              ]),
          const Divider(
            color: Colors.grey,
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 8,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: programTitle.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>StorysDetail()));
                      },
                      title: Text(
                        programData[index].title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      leading: Image.asset(programData[index].imagePath),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(programData[index].detail),
                          Text('회기 | 게더링 | 유료'),
                        ],
                      ),
                      trailing: const Icon(Icons.favorite),
                      isThreeLine: true,
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
