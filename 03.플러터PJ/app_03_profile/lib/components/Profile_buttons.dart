// 프로파일 버튼 클래스

import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key?key}):super(key: key);

  /* 
    [ 축에 대한 정의 ]
    1. mainAxis : 진행방향축
    (Row는 수평방향이 메인축 / Column은 수직방향이 메인축)
    2. crosssAxis : 진행방향 직각축
    (Row는 수직방향이 크로스축 / Column은 수평방향이 크로스축)
   */

// 빌드 재정의
  @override
  Widget build(BuildContext context) {
    // 버튼은 수평방향으로 진행하므로 Row()
    return Row(
      // Row는 수평방향이 메인축임!(mainAxis) : 사이간격 균일하게(spaceEvenly)
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 버튼 위젯 메서드 호출
        // Follow버튼 : _buildFollowButton()
        _buildFollowButton(),
        // Message버튼 : _buildMessageButton()
        _buildMessageButton(),
      ],
    );
  }
}

/* 
  [ 플러터에서 버튼만들기 4가지 방법 ]
  1. TextButton 위젯 : 버튼자체 디자인 없고 기능만 있음
  2. ElevatedButton 위젯 : 버튼 디자인이 있음 (elevation 입체효과)
  3. OutlineButton 위젯 : 가장자리 테두리 선만 있는 버튼
  4. InkWell 위젯 : 모든 위젯을 버튼화 할 수 있는 위젯
    -> Container 위젯을 만들어서 이것을 버튼화 하는 것이 일반적인 방법
 */

// Follow버튼 위젯 메서드
Widget _buildFollowButton (){
  // InkWell 위젯버튼
  return InkWell(
    // 버튼을 탭하는 경우 이벤트 체크하기(on+이벤트명:캐믈케이스)
    // 이벤트 발생시 실행코드는 익명함수로 표현!
    onTap: (){
      // cmd창에 찍기는 print로!
      // 브라우저창에서는 console창에 출력됨!
      debugPrint('Follow탭했음');
    },

    // 버튼 디자인을 위한 컨테이너 위젯 사용!
    child: Container(
      // 내부정렬 center는 수평, 수직 모두 중앙
      alignment: Alignment.center,
      width: 150,
      height: 45,
      // 박스 디자인 데코레이션 속성
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Text(
        "Follow",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
// Message버튼 위젯 메서드
Widget _buildMessageButton (){
  // InkWell 위젯버튼
  return InkWell(
    onTap: (){
      // cmd창에 찍기는 print로!
      debugPrint('Message탭했음');
    },
    // 버튼 디자인을 위한 컨테이너 위젯 사용!
    child: Container(
      // 내부정렬 center는 수평, 수직 모두 중앙
      alignment: Alignment.center,
      width: 150,
      height: 45,
      // 박스 디자인 데코레이션 속성
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(),
      ),
      child: Text(
        "Message",
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}