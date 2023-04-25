import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'storefront_flutter_platform_interface.dart';

/// An implementation of [StorefrontFlutterPlatform] that uses method channels.
class MethodChannelStorefrontFlutter extends StorefrontFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('storefront_flutter');

  @override
  Future<String?> getStorefrontCountryCode() async {
    final countryCode = await methodChannel.invokeMethod<String>('getStorefrontCountryCode');
    return countryCode;
  }
}
