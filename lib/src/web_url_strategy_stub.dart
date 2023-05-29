//３．Create a stub which exposes a method to return the instance of this abstract implementation.
// This is only to keep the dart analysis tool happy.
//  => インターフェースクラスで条件付きimport文を使えるようにするためだけのクラス

import 'web_url_strategy_interface.dart';

WebUrlStrategy getWebUrlStrategy() => throw UnsupportedError("Cannot create UrlStrategy");