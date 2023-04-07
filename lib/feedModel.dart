class Post {
  String username;
  String profilePic;
  String postPic;
  String caption;

  Post({required this.username, required this.profilePic, required this.postPic, required this.caption});
}

final List<Post> posts = [
  Post(username: "codekunst", profilePic: "image/profile1.jpg", postPic: "image/post1.jpg", caption: "당신이 행복하기 때문에 마시고, 비참해서 마시지 마십시오."),
  Post(username: "chelly142", profilePic: "image/profile2.jpg", postPic: "image/post2.jpg", caption: "합리적인 사람은 취해야합니다. 인생의 최고는 단지 중독입니다."),
  Post(username: "Hsjo0227", profilePic: "image/profile3.jpg", postPic: "image/post3.jpg", caption: "목이 마를 때와 목이 마르지 않을 때 두 번만 술을 마십니다"),
];