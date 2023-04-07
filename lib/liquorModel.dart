class Liquor{
  final String name;    //프로그램 제목
  final String imagePath;       //프로그램 이미지 경로
  final String detail;

  Liquor(this.name, this.imagePath, this.detail);
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

final List<Liquor> liquorData = List.generate(
    liquorName.length,
        (index) =>
        Liquor(liquorName[index], liquorDetail[index], imagePath[index]));
