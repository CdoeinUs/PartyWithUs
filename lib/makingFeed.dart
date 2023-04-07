import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'dart:io';

class WritePage extends StatefulWidget {
  @override
  _WritePageState createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
//   void dispose() {
//     _titleController.dispose();
//     _contentController.dispose();
//     super.dispose();
//   }
//
//   final picker = ImagePicker();
//
//   File? _image; // 선택한 이미지를 저장할 변수
//
// // 카메라에서 이미지 가져오기
//   Future<void> _getImageFromCamera() async {
//     final image = await ImagePicker().pickImage(source: ImageSource.camera);
//     if (image != null) {
//       setState(() {
//         _image = File(image.path);
//       });
//     }
//   }
//
// // 갤러리에서 이미지 가져오기
//   Future<void> _getImageFromGallery() async {
//     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (image != null) {
//       setState(() {
//         _image = File(image.path);
//       });
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("글쓰기"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: "제목을 입력하세요",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: TextField(
                textAlign: TextAlign.start,
                controller: _contentController,
                maxLines: null,
                expands: true,
                decoration: const InputDecoration(
                  labelText: "내용을 입력하세요",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            // Row(
            //   children: [
            //     ElevatedButton(
            //       onPressed: _getImageFromCamera,
            //       child: const Text('카메라에서 사진 가져오기'),
            //     ),
            //     ElevatedButton(
            //       onPressed: _getImageFromGallery,
            //       child: const Text('갤러리에서 사진 가져오기'),
            //     ),
            //   ],
            // ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueGrey,
                // 글자색
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // 모서리 둥글기
                  side: BorderSide(color: Colors.blue), // 테두리 설정
                ),
                elevation: 3,
                // 그림자 설정
                padding: EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0), // 버튼 패딩
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 5),
                  Text('Upload'),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
