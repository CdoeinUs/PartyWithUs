import 'package:flutter/material.dart';
import 'package:partywithus/model.dart';

class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, // 세로 방향으로 왼쪽 정렬
          children: [
            Row(
              children: const [
                Text("OUNCE",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                Spacer(),
                Icon(Icons.account_circle)
              ],
            ),
            const Divider(
              color: Colors.black,
              height: 10,
              thickness: 3,
              indent: 0,
              endIndent: 8,
            ),
            const SizedBox(height: 20,),

            const Text(
              "카테고리",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),

            Container(
              height : (MediaQuery.of(context).size.height) * 0.3,
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Row(children: const [
                      Icon(Icons.favorite),
                      Text("  좋아요 표시한 술"),
                    ]),
                  ),
                  const SizedBox(height: 20,),
                  TextButton(
                    onPressed: (){},
                    child: Row(children: const [
                      Icon(Icons.article),
                      Text("  내가 쓴 글"),
                    ]),
                  ),
                  const SizedBox(height: 20,),
                  TextButton(
                    onPressed: (){},
                    child: Row(children: const [
                      Icon(Icons.message),
                      Text("  댓글 단 글"),
                    ]),
                  ),
                  const SizedBox(height: 20,),
                  TextButton(
                    onPressed: (){},
                    child: Row(children: const [
                      Icon(Icons.local_bar),
                      Text("  먹고 있는 술"),
                    ]),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    // 버튼이 눌렸을 때 실행될 코드
                  },
                  child: Text("베이스"),
                ),
                const SizedBox(width: 10,),
                OutlinedButton(
                  onPressed: () {
                    // 버튼이 눌렸을 때 실행될 코드
                  },
                  child: Text("리큐르"),
                ),
                const SizedBox(width: 10,),
                OutlinedButton(
                  onPressed: () {
                    // 버튼이 눌렸을 때 실행될 코드
                  },
                  child: Text("가니쉬"),
                ),
                const SizedBox(width: 10,),
                OutlinedButton(
                  onPressed: () {
                    // 버튼이 눌렸을 때 실행될 코드
                  },
                  child: Text("기타"),
                )
              ],
            ),
            Container(
              height : (MediaQuery.of(context).size.height) * 0.4,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: cocktailName.length, // 리스트의 아이템 개수
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(cocktailImagePath[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Text(cocktailName[index],style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),)// Card의 내용을 추가합니다
                      ),
                    );
                  },
              ),
            )
          ],
        ),
      ),
    );
  }
}
