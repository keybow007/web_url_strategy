//２−２．Mobileの場合の実装クラス作成（空実装でいい）
//https://github.com/simpleclub/url_strategy/blob/main/url_strategy/lib/src/url_strategy_web.dart


import 'package:web_url_strategy/src/web_url_strategy_interface.dart';

class UrlStrategyImplMobile implements WebUrlStrategy {
  @override
  void setHashUrlStrategy() {}

  @override
  void setPathUrlStrategy() {}
}

WebUrlStrategy getUrlStrategy() => UrlStrategyImplMobile();
