<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Configuring the URL strategy on the web plugin inspired by [url_strategy](https://pub.dev/packages/url_strategy)

["url_strategy"](https://pub.dev/packages/url_strategy) package has not been maintained for more than 2 years and seems to cause [problem](https://github.com/simpleclub/url_strategy/issues/38) since Flutter 3.10 (Dart3), so I created my own package. 

## Features

Package for Flutter apps that allows setting the web URL strategy with a single line of code.

## Getting started

Since this is not a package published to "pub.dev", you can install this package by making the following settings in the pubspec.yaml file.

```
  web_url_strategy:
    git:
      url: git@github.com:keybow007/web_url_strategy.git
```

## Usage

Set URL strategy before runApp method

- PathUrlStrategy : WebUrlStrategy.setPathUrlStrategy
- HashUrlStrategy : WebUrlStrategy.setHashUrlStrategy

See the official Flutter reference below for more details on the differences between the two strategies
https://docs.flutter.dev/ui/navigation/url-strategies

```dart
void main() {
  //Set path url strategy before runApp
  WebUrlStrategy().setPathUrlStrategy();
  runApp(const MyApp());
}
```

