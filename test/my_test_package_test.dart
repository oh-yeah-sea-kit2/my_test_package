import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:my_test_package/my_test_package.dart';
import 'dart:async';

void main() {
  /// CustomButtonウィジェットの基本的な機能をテストします
  ///
  /// テスト内容：
  /// 1. ボタンが正しくテキストを表示するか
  /// 2. ボタンをタップした時にonPressedコールバックが呼ばれるか
  ///
  /// 期待される結果：
  /// - 指定したテキスト「Test Button」が表示される
  /// - ボタンタップ後にonPressedが実行され、wasPressedがtrueになる
  testWidgets('CustomButton displays text and handles tap',
      (WidgetTester tester) async {
    bool wasPressed = false;

    // ボタンウィジェットを作成
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomButton(
            text: 'Test Button',
            onPressed: () {
              wasPressed = true;
            },
          ),
        ),
      ),
    );

    // テキストが正しく表示されているか確認
    expect(find.text('Test Button'), findsOneWidget);

    // ボタンをタップ
    await tester.tap(find.byType(CustomButton));
    await tester.pump();

    // コールバックが呼ばれたか確認
    expect(wasPressed, true);
  });

  /// CustomButtonウィジェットのデバッグ出力をテストします
  ///
  /// テスト内容：
  /// 1. ウィジェットのbuildメソッドが呼ばれた時にデバッグメッセージが出力されるか
  ///
  /// テスト手法：
  /// - runZonedを使用してprint文の出力をキャプチャ
  /// - 出力された内容を検証
  ///
  /// 期待される結果：
  /// - 「CustomButton build」というメッセージが出力される
  testWidgets('CustomButton prints debug message when built',
      (WidgetTester tester) async {
    final List<String> printLog = [];

    await runZoned(
      () async {
        await tester.pumpWidget(
          MaterialApp(
            home: CustomButton(
              text: 'Test',
              onPressed: () {},
            ),
          ),
        );
      },
      zoneSpecification: ZoneSpecification(
        print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
          printLog.add(line);
        },
      ),
    );

    expect(printLog.contains('CustomButton build'), true);
  });
}
