import 'web_url_strategy_stub.dart'
    //TODO webの方を先に持ってくる必要あり
    if (dart.library.html) 'url_strategy_impl_web.dart'
    if (dart.library.io) 'url_strategy_impl_mobile.dart';


//１．抽象クラス（インターフェース）の作成
//  Create an abstract class to define the methods you will need to use.
abstract class WebUrlStrategy {
  void setPathUrlStrategy() {}

  void setHashUrlStrategy() {}

  //１の段階ではgetUrlStrategyはニョロニョロOK（プラットフォーム毎の実装ファイルが未作成のため）
  factory WebUrlStrategy() => getWebUrlStrategy();
}
