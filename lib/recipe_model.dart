import 'package:flutter/cupertino.dart';

class RecipeInfo {
  RecipeInfo(
      {required this.name,
      required this.cardImagePath,
      required this.writerName,
      required this.description,
      required this.time,
      required this.date,
      required this.favorite,
      required this.percentage,
      required this.ingredient,
      required this.process,
      required this.processImagePath});

  final String name;
  final String cardImagePath; //검색창에서 보여지는 이미지
  final String writerName;
  final String description; //짧은 설명
  final String time; //소요시간
  final String date; //작성날짜
  final int favorite;
  final int percentage; //칵테일 도수
  final List<String> ingredient; //재료
  final List<String> process; //과정 리스트
  final List<String> processImagePath; //사이사이 들어가는 사진 리스트
}

// class RecipePageInfo extends RecipeCardInfo{
// final String Pageimg; // 레시피 페이지에서 보여지는 이미지
// final String writerName;
// final String date; //작성날짜
// // final String 짧은 설명
// final String time;
// final List<String> ingredient;
// final List<String> process;
// final List<String> processImagePath;
//
//   RecipeCardInfo({required this.name, required this.cardImagePath});
// }

/// 테스트용 레시피 정보
List<RecipeInfo> testRecipes(BuildContext context) {
  return [
    RecipeInfo(
        name: '데킬라 선라이즈',
        cardImagePath: 'image/tequila_sunrise.webp',
        writerName: '쭈팡이',
        description: testDescription1,
        time: '3분',
        date: '2022.12.24',
        favorite: 134,
        percentage: 30,
        ingredient: testIngredient1,
        process: testProcess1,
        processImagePath: testProcessImagePath1),
    RecipeInfo(
        name: '갓파더',
        cardImagePath: 'image/godfather.jpg',
        writerName: '쭈팡이',
        description: testDescription2,
        time: '3분',
        date: '2022.12.13',
        favorite: 296,
        percentage: 38,
        ingredient: testIngredient2,
        process: testProcess2,
        processImagePath: testProcessImagePath2),
    RecipeInfo(
        name: '블루라군',
        cardImagePath: 'image/tequila_sunrise.webp',
        writerName: '쭈팡이',
        description: testDescription3,
        time: '3분',
        date: '2022.12.5',
        favorite: 458,
        percentage: 12,
        ingredient: testIngredient3,
        process: testProcess3,
        processImagePath: testProcessImagePath3),
    RecipeInfo(
        name: '배추김치',
        cardImagePath: 'image/tequila_sunrise.webp',
        writerName: '쭈팡이',
        description: testDescription4,
        time: '1시간',
        date: '2022.14.41',
        favorite: 29486,
        percentage: 87,
        ingredient: testIngredient4,
        process: testProcess4,
        processImagePath: testProcessImagePath4),
  ];
}

String testDescription1 = '데킬라의 고향인 멕시코의 "일출"을 형상화해서 만든 롱 드링크 칵테일';
String testDescription2 =
    '퇴근길에 재즈와 함께 갓파더 한잔하고 싶은 밤이네요\n 제가 자주 즐기는 갓파더 레시피 공유할께요!\n\n';
String testDescription3 = '바다의 상큼함을 한 잔의 음료에 담아낸 칵테일';
String testDescription4 = '한국인이면 못참지 ㅋㅋㅋ';

List<String> testIngredient1 = ['데킬라 1.5oz', '그레나딘 시럽 0.5oz', '오렌지 주스'];
List<String> testIngredient2 = ['스카치 위스키 1.5oz', '아마레또 0.5oz'];
List<String> testIngredient3 = ['보드카 1oz', '블루 큐라소 20ml', '레몬주스 20ml'];
List<String> testIngredient4 = ['배추 1포기', '김치 양념'];
List<String> testProcess1 = [
  '잔에 얼음을 채운후 데킬라를 1.5oz 넣는다.',
  '오렌지 주스를 잔의 80%정도까지 채운다.',
  '바 스푼을 사용해 한쪽에서 그레나딘 시럽 0.5oz를 천천히 붓는다.'
];
List<String> testProcess2 = [
  '스카치 위스키와 아마레또를 섞는다.',
  '오렌지 껍질을 짜서 즙을 넣은후 글라스에 넣는다.',
  '가볍게 저어준다'
];
List<String> testProcess3 = [
  '셰이커에 보드카 1oz, 블루 큐라소 20ml, 레몬주스 20ml를 넣고 섞는다.',
  '글라스에 따른다.'
];
List<String> testProcess4 = [
  '소금에 절인 배추에 김치 양념을 고루 버무린다.',
  '통에 담아 상온에서 하루 숙성후 냉장고에 넣고 꺼내먹는다.'
];
List<String> testProcessImagePath1 = [
  'image/godfather.jpg',
  'image/godfather.jpg',
  'image/godfather.jpg'
];
List<String> testProcessImagePath2 = [
  'image/godfather.jpg',
  'image/godfather.jpg',
  'image/godfather.jpg'
];
List<String> testProcessImagePath3 = [
  'image/godfather.jpg',
  'image/godfather.jpg',
  'image/godfather.jpg'
];
List<String> testProcessImagePath4 = [
  'image/godfather.jpg',
  'image/godfather.jpg',
  'image/godfather.jpg'
];
