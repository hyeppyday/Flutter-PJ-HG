import 'package:flutter/material.dart';
// 레시피 홈 클래스 페이지 불러오기
import 'package:app_02_recipe/pages/recipe_page.dart';

void main() {
  runApp(const MyApp());
}

// 초기호출 클래스는 비상태위젯을 상속받음!
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Material App 위젯을 사용하여 디자인한다!!
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 머티리얼 앱 시작!
      title: 'Flutter Demo',
      // 디버그 모드 표시 숨기기
      debugShowCheckedModeBanner: false,
      // theme 테마 속성 - 앱전체에 적용하는 속성값들 셋팅
      theme: ThemeData(
        // 전체 폰트적용하기
        // fontFamily 속성은 하나의 폰트만 적용됨
        // fontFamilyFallback속성이 여러폰트 적용됨
        // fontFamilyFallback : [리스트형 폰트명데이터입력]
        fontFamilyFallback: ["PatuaOne","Diphylleia"],
      ),
      // 레시피홈 클래스 상단에 import후 호출!
      home: RecipePage(),
    );
  }
}
