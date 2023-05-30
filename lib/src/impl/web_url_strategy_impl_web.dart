import 'package:flutter_web_plugins/flutter_web_plugins.dart' as flutterweb;

import '../web_url_strategy_interface.dart';


class UrlStrategyImplWeb implements WebUrlStrategy {
  @override
  void setHashUrlStrategy() {
    flutterweb.setUrlStrategy(const flutterweb.HashUrlStrategy());
  }

  @override
  void setPathUrlStrategy() {
    flutterweb.setUrlStrategy(flutterweb.PathUrlStrategy());
  }
}

WebUrlStrategy getWebUrlStrategy() => UrlStrategyImplWeb();
