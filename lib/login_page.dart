import 'package:flutter/material.dart';

//로그인 페이지
///항상 Navigator.pushNamed(context, '/LoginPage');로 사용해야지 로그인하러가기 기능이 작동함
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String routeName = '/LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //앱의 테마, 기기의 사이즈
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    //입력받은 id,비밀번호
    String _id = '';
    String _password = '';

    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'OUNCE',
              style: theme.textTheme.displaySmall,
            ),
            SizedBox(
              height: height / 8,
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                    labelText: 'ID', hintText: '아이디를 입력해주세요'),
                onChanged: (value) {
                  setState(() {
                    _id = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'PW',
                  hintText: '비밀번호를 입력해주세요',
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: false,
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: height / 7,
            ),
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                  //버튼을 눌렀을때 색을 바꿔줌
                  //버튼의 스타일이 변하지 않으면 FilledButton.styleForm을 사용하는것이 좋음
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black54;
                    } else {
                      return Colors.black;
                    }
                  }),
                  minimumSize: MaterialStateProperty.all(const Size(180, 50))),
              child: const Text(
                '로그인',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterPage()));
              },
              style: ButtonStyle(
                  //버튼을 눌렀을때 색을 바꿔줌
                  //버튼의 스타일이 변하지 않으면 FilledButton.styleForm을 사용하는것이 좋음
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.grey[750];
                    } else {
                      return Colors.grey[800];
                    }
                  }),
                  minimumSize: MaterialStateProperty.all(const Size(180, 50))),
              child: const Text(
                '회원가입',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FindID()));
                },
                child: const Text(
                  '아이디/비밀번호 찾기',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ))
          ],
        ),
      ),
    );
  }
}

//회원가입 페이지
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String _id = '';
    String _password = '';
    String _emailaddress = '';
    String _phonenumber = '';
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'OUNCE',
              style: theme.textTheme.displaySmall,
            ),
            SizedBox(
              height: height / 8,
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                    labelText: 'ID', hintText: '아이디를 입력해주세요'),
                onChanged: (value) {
                  setState(() {
                    _id = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'PW',
                  hintText: '비밀번호를 입력해주세요',
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: false,
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                    labelText: 'EM', hintText: '이메일를 입력해주세요'),
                onChanged: (value) {
                  setState(() {
                    _emailaddress = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                    labelText: 'PH', hintText: '전화번호를 입력해주세요'),
                onChanged: (value) {
                  setState(() {
                    _phonenumber = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: height / 7,
            ),
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                  //버튼을 눌렀을때 색을 바꿔줌
                  //버튼의 스타일이 변하지 않으면 FilledButton.styleForm을 사용하는것이 좋음
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black54;
                    } else {
                      return Colors.black;
                    }
                  }),
                  minimumSize: MaterialStateProperty.all(const Size(180, 50))),
              child: const Text(
                '계정 생성하기',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FindID()));
                },
                child: const Text(
                  '아이디/비밀번호 찾기',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ))
          ],
        ),
      ),
    );
  }
}

//아이디 찾기
class FindID extends StatefulWidget {
  const FindID({Key? key}) : super(key: key);

  @override
  State<FindID> createState() => _FindIDState();
}

class _FindIDState extends State<FindID> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String _emailaddress = '';
    String _phonenumber = '';
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'OUNCE',
              style: theme.textTheme.displaySmall,
            ),
            SizedBox(
              height: height / 8,
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                    labelText: 'EM', hintText: '이메일를 입력해주세요'),
                onChanged: (value) {
                  setState(() {
                    _emailaddress = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                    labelText: 'PH', hintText: '전화번호를 입력해주세요'),
                onChanged: (value) {
                  setState(() {
                    _phonenumber = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: height / 7,
            ),
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                  //버튼을 눌렀을때 색을 바꿔줌
                  //버튼의 스타일이 변하지 않으면 FilledButton.styleForm을 사용하는것이 좋음
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black54;
                    } else {
                      return Colors.black;
                    }
                  }),
                  minimumSize: MaterialStateProperty.all(const Size(180, 50))),
              child: const Text(
                '아이디 찾기',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  //LoginPage가 나올때까지 pop
                  Navigator.popUntil(
                      context, ModalRoute.withName('/LoginPage'));
                },
                child: const Text(
                  '로그인 하러 가기',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FindPW()));
                },
                child: const Text(
                  '비밀번호도 까먹었어요',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ))
          ],
        ),
      ),
    );
  }
}

class FindPW extends StatefulWidget {
  const FindPW({Key? key}) : super(key: key);

  @override
  State<FindPW> createState() => _FindPWState();
}

class _FindPWState extends State<FindPW> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String _id= '';
    String _emailaddress = '';
    String _phonenumber = '';
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'OUNCE',
              style: theme.textTheme.displaySmall,
            ),
            SizedBox(
              height: height / 8,
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                    labelText: 'ID', hintText: '아이디를 입력해주세요'),
                onChanged: (value) {
                  setState(() {
                    _id = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                    labelText: 'EM', hintText: '이메일를 입력해주세요'),
                onChanged: (value) {
                  setState(() {
                    _emailaddress = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: width * 8 / 10,
              child: TextField(
                decoration: const InputDecoration(
                    labelText: 'PH', hintText: '전화번호를 입력해주세요'),
                onChanged: (value) {
                  setState(() {
                    _phonenumber = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: height / 7,
            ),
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                  //버튼을 눌렀을때 색을 바꿔줌
                  //버튼의 스타일이 변하지 않으면 FilledButton.styleForm을 사용하는것이 좋음
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black54;
                    } else {
                      return Colors.black;
                    }
                  }),
                  minimumSize: MaterialStateProperty.all(const Size(180, 50))),
              child: const Text(
                '아이디 찾기',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  //LoginPage가 나올때까지 pop
                  Navigator.popUntil(
                      context, ModalRoute.withName('/LoginPage'));
                },
                child: const Text(
                  '로그인 하러 가기',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )),
          ],
        ),
      ),
    );
  }
}
