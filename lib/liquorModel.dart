import 'package:http/http.dart' as http;
import 'dart:convert';

class Liquor {
  final int id;
  final String name;
  final int proof; //도수
  final String image;
  final String type;
  final String country;
  final int amount;
  final String box;
  final int price;
  final int reviews;

  Liquor({
    required this.id,
    required this.name,
    required this.proof,
    required this.image,
    required this.type,
    required this.country,
    required this.amount,
    required this.box,
    required this.price,
    required this.reviews,
  });
}

// class Liquor {
//   final String name; //프로그램 제목
//   final String imagePath; //프로그램 이미지 경로
//   final String detail;
//
//   Liquor(this.name, this.imagePath, this.detail);
// }
final List<Liquor> liquorData = [];

Future<void> fetchLiquorData() async {
  liquorData.clear();
  final response = await http.get(Uri.parse('http://192.168.75.87:8000/api/admin/liquor/'));
  print(response.body);
  final jsonData = json.decode(utf8.decode(response.bodyBytes));
  print(jsonData);

  jsonData.forEach((liquor) {
    final newLiquor = Liquor(
      id: liquor['id'],
      name: liquor['name'],
      proof: liquor['proof'],
      image: liquor['image'],
      type: liquor['type'],
      country: liquor['country'],
      amount: liquor['amount'],
      box: liquor['case'],
      price: liquor['price'],
      reviews: liquor['reviews'],
    );
    liquorData.add(newLiquor);
  });

}

final List<String> liquorName = [
  '커티샥 오리지널',
  '발렌타인 17년',
];
final List<String> imagePath = [
  'image/liquor1.png',
  'image/liquor2.png',
];
final List<String> liquorDetail = [
  '커티샥슉쇽셕',
  '발렌타인 고등학교 1학년',
];

// final List<Liquor> liquorData = List.generate(
//     liquorName.length,
//     (index) =>
//         Liquor(liquorName[index], imagePath[index], liquorDetail[index]));
