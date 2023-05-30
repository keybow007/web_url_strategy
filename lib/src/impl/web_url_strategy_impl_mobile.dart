import 'package:web_url_strategy/src/web_url_strategy_interface.dart';

class UrlStrategyImplMobile implements WebUrlStrategy {
  @override
  void setHashUrlStrategy() {}

  @override
  void setPathUrlStrategy() {}
}

WebUrlStrategy getWebUrlStrategy() => UrlStrategyImplMobile();
