import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storefront_flutter/storefront_flutter_method_channel.dart';

void main() {
  MethodChannelStorefrontFlutter platform = MethodChannelStorefrontFlutter();
  const MethodChannel channel = MethodChannel('storefront_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'DE';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getStorefrontCountryCode', () async {
    expect(await platform.getStorefrontCountryCode(), 'DE');
  });
}
