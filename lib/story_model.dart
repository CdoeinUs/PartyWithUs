import 'package:flutter/material.dart';

class StoryInfo {
  StoryInfo({required this.place,
    required this.storyImgPath,
    required this.title,
    required this.date,
    required this.time,
    required this.duration,
    required this.content,
    required this.people});

  final String place;
  final String storyImgPath;
  final String title;
  final String date; //여기서부터
  final String time;
  final String duration; // 여기까지 문자열 하나로 묶어도 괜찮나?
  final String content;
  final List <String> people; //참가인원 리스트 (or 인원수)
}

/**
 * 테스트용 스토리 정보
 */
List<StoryInfo> testStory(BuildContext context) {
  List<StoryInfo> a = [];
  for (int i = 0; i < testPlace.length; i++) {
    a.add(StoryInfo(place: testPlace[i],
        storyImgPath: testStoryImgPath[i],
        title: testTitle[i],
        date: testDate[i],
        time: testTime[i],
        duration: testDuration[i],
        content: testContent[i],
        people: testPeople[i]));
  }
  return a;
}
List<String> testPlace = ["회기", "남한산성", "수원", "을지로"];
List<String> testStoryImgPath = [
  "images/hoegi.jpg",
  "images/Namhansanseong.jpg",
  "images/suwon.jpg",
  "images/euljiro.jpg"
];
List<String> testTitle = [
  "PWU 12월 크리스마스 모임",
  "파전에 골뱅이 무침 맛있는 집",
  "왕갈비 통닭",
  "꼼장어 맛집"
];
List<String> testDate = [
  "2022. 12. 24",
  "2011. 08. 16",
  "2013. 02. 05",
  "2019. 07. 21"
];
List<String> testTime = ["오후 7:00", "오전 11:00", "오후 3:00", "오후 02:00"];
List<String> testDuration = ["3시간", "1시간", "5시간", "2시간",];
List<String> testContent = [
  "크리스마스엔 따듯한 뱅쇼와 재즈 어때요?🎄\n 갤러리를 더욱 빛내줄 크리스마스 팝업스토어가 운영 중이에요!❄\n ✔이번 팝업스토어에선\n 스노우볼, 캔들 등의 크리스마스 오브제부터 \n다꾸 용품, 주얼리, 케이스까지 \n다채로운 제품을 만나 보실 수 있습니다! \n팝업스토어 곳곳엔 포토존까지 마련되어 있으니 놓치지 마세요-⛄ \n이번 주 크리스마스 원더랜드에서 미리 크리스마스를 느껴보는 거 어때요?❄ \n📍경기도 수원시 영통구 광교중앙로 124 \n📍12.09(금)-12.25(일) \n📍매일 : 10:30~20:00 (금-일 : 20:30)",
  "파전에 골뱅이나 먹으러 갑시다!",
  "지금까지 이런 맛은 없었다. 이것은 갈비인가 통닭인가.",
  "꼼장어가 그렇게 맛있다던데 한번 먹으러 가실 분 구합니다.\n 늦으면 지각비 있음"
];
List<List<String>> testPeople = [
  ["철수", "영희"],
  ["바둑이", "김규삼", "강준규"],
  ["배시국"],
  ["조성현", "박연진", "전요환", "강인규", "변기태"]
];