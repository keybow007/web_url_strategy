
//「as flutterWeb」をつけないと自作成の「UrlStrategy」クラスがimportできない
import 'package:flutter_web_plugins/flutter_web_plugins.dart' as flutterWeb;

import 'web_url_strategy_interface.dart';



//２−１．Webの場合の実装クラス作成
//https://github.com/simpleclub/url_strategy/blob/main/url_strategy/lib/src/url_strategy_web.dart
class UrlStrategyImplWeb implements WebUrlStrategy {
  @override
  void setHashUrlStrategy() {
    flutterWeb.setUrlStrategy(const flutterWeb.HashUrlStrategy());
  }

  @override
  void setPathUrlStrategy() {
    flutterWeb.setUrlStrategy(flutterWeb.PathUrlStrategy());
  }

}

WebUrlStrategy getUrlStrategy() => UrlStrategyImplWeb();