<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# my_test_package

カスタマイズ可能なFlutterボタンウィジェットを提供するパッケージです。
Material Designに準拠したボタンをより簡単に実装できます。

## 機能

- カスタマイズ可能なボタンウィジェット（CustomButton）
- Material Designに準拠したデザイン
- デバッグモードでのビルド状態の可視化

## 導入方法

`pubspec.yaml`に以下を追加してください：

```yaml
dependencies:
  my_test_package:
    git:
      url: https://github.com/oh-yeah-sea-kit2/my_test_package.git
      ref: develop  # または特定のタグやコミットハッシュ
```

その後、以下のコマンドを実行してください：

```bash
flutter pub get
```

## 使用方法

### 基本的な使用方法

```dart
import 'package:my_test_package/my_test_package.dart';

// ボタンの実装例
CustomButton(
  text: 'Click me',
  onPressed: () {
    print('Button pressed!');
  },
)
```

### パラメータ

- `text`: ボタンに表示するテキスト（必須）
- `onPressed`: ボタンが押された時のコールバック関数（必須）

## その他の情報

- バグ報告やフィーチャーリクエストは[GitHubのIssues](https://github.com/oh-yeah-sea-kit2/my_test_package/issues)にお願いします
- コントリビューションは大歓迎です！プルリクエストをお待ちしています
- このパッケージはMITライセンスの下で公開されています

## テスト

パッケージのテストを実行するには：

```bash
flutter test
```

## ライセンス

MIT License - 詳細は[LICENSE](LICENSE)ファイルを参照してください。
