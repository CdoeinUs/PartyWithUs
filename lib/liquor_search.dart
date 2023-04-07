import 'package:flutter/material.dart';
import 'liquorModel.dart';
import 'liquor_detail.dart';

class liquorSearch extends StatefulWidget {
  const liquorSearch({Key? key}) : super(key: key);

  @override
  State<liquorSearch> createState() => _liquorSearchState();
}

class _liquorSearchState extends State<liquorSearch> {

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
                      child: Text('30도~40도'),
                      value: 'fast_speed',
                    ),
                    PopupMenuItem(
                      child: Text('40도~50도'),
                      value: 'medium_speed',
                    ),
                    PopupMenuItem(
                      child: Text('50도~'),
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
                          '도수',
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
                      value: 'easy',
                    ),
                    PopupMenuItem(
                      child: Text('10000원~20000원'),
                      value: 'medium',
                    ),
                    PopupMenuItem(
                      child: Text('20000원~'),
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
                ),
                PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: Text('바닐라향'),
                      value: 'sweet',
                    ),
                    PopupMenuItem(
                      child: Text('스파이시향'),
                      value: 'salty',
                    ),
                    PopupMenuItem(
                      child: Text('오크향'),
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
                          '향',
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
                itemCount: liquorName.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>liquor_Detail()));
                      },
                      title: Text(
                        liquorData[index].name,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      leading: Image.asset(liquorData[index].detail),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(liquorData[index].imagePath),
                        ],
                      ),
                      trailing: const Icon(Icons.expand_more_outlined),
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
