import 'package:flutter/cupertino.dart';

class AppConfig extends InheritedWidget {
  final String flavorName;
  final String googleServicesFile;
  final String apiEndpointsURL;
  final String paymentApiEndpointsURL;
  final String googleCloudKey;
  final String contentBaseURL;
  Uri? initialLink;

  AppConfig({
    required this.flavorName,
    required this.contentBaseURL,
    required this.googleCloudKey,
    required this.apiEndpointsURL,
    required this.googleServicesFile,
    required this.paymentApiEndpointsURL,
    this.initialLink,
    required Widget child,
  }) : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
