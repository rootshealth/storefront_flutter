import 'package:flutter_test/flutter_test.dart';
import 'package:storefront_flutter/storefront_flutter.dart';
import 'package:storefront_flutter/storefront_flutter_platform_interface.dart';
import 'package:storefront_flutter/storefront_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStorefrontFlutterPlatform
    with MockPlatformInterfaceMixin
    implements StorefrontFlutterPlatform {

  @override
  Future<String?> getStorefrontCountryCode() => Future.value('DE');
}

void main() {
  final StorefrontFlutterPlatform initialPlatform = StorefrontFlutterPlatform.instance;

  test('$MethodChannelStorefrontFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStorefrontFlutter>());
  });

  test('getStorefrontCountryCode', () async {
    StorefrontFlutter storefrontFlutterPlugin = StorefrontFlutter();
    MockStorefrontFlutterPlatform fakePlatform = MockStorefrontFlutterPlatform();
    StorefrontFlutterPlatform.instance = fakePlatform;

    expect(await storefrontFlutterPlugin.getStorefrontCountryCode(), 'DE');
  });
}
