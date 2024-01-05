// 오른쪽에서 들어오는 사이드 박스 drawer 클래스

import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

// 빌드 재정의
  @override
  Widget build(BuildContext context) {
    // 사이드박스는 Container로 만들어줌
    return Container(
      // 가로크기
      width: 200,
      // 높이값 double.infinity -> 높이값 100%로 채우기
      height: double.infinity,
      // 박스 배경색
      color: Colors.blue,
      // 메뉴 넣기
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            // 닫기 버튼
            Row(
              // 오른쪽 끝으로 정렬 : 수평방향이니까 Row에서는 mainAxis
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // 아이콘의 버튼화! -> Inkwell 위젯
                InkWell(
                  // tap 이벤트시 드로어 닫기!
                  onTap: (){
                    // debugPrint('닫아!');
                    // 이동클래스인 Navigator.pop()메서드 사용
                    Navigator.pop(context);
                    // 내용으로 context만 쓰면 현재상태로 되돌림
                    // 열었던 드로어가 닫힌다!
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            // Home메뉴
            Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Comunity메뉴
            Row(
              children: [
                Icon(
                  Icons.people,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Comunity',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Store메뉴
            Row(
              children: [
                Icon(
                  Icons.store,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Store',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // development메뉴
            Row(
              children: [
                Icon(
                  Icons.developer_mode,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'development',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
