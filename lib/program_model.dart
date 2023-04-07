class Program{
  final String title;    //프로그램 제목
  final String imagePath;       //프로그램 이미지 경로
  final String detail;   //프로그램 설명

  Program(this.title,this.detail,this.imagePath);
}

final List<String> programTitle = [
  '크리스마스엔 따뜻한 뱅쇼 한 잔 어때요?',
  '지친 여행자를 위한 위로의 레시피',
];
final List<String> imagePath = [
  'image/program1.png',
  'image/program2.png',
];
final List<String> programDetail = [
  '준성과 함께 쉽고 간단한 레시피를 배워봐요 :)',
  '호찬과 함께 쉽고 간단한 레시피를 배워봐요 :)',
];

final List<Program> programData = List.generate(
    programTitle.length,
        (index) =>
        Program(programTitle[index], programDetail[index], imagePath[index]));
