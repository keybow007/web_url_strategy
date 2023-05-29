import 'package:web_url_strategy/src/web_url_strategy_stub.dart'
    if (dart.library.html) 'package:web_url_strategy/src/impl/web_url_strategy_impl_web.dart'
    if (dart.library.io) 'package:web_url_strategy/src/impl/web_url_strategy_impl_mobile.dart';


//  Create an abstract class to define the methods you will need to use.
abstract class WebUrlStrategy {
  void setPathUrlStrategy() {}

  void setHashUrlStrategy() {}

  factory WebUrlStrategy() => getWebUrlStrategy();
}
