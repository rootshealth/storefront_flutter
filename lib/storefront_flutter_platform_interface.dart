import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'storefront_flutter_method_channel.dart';

abstract class StorefrontFlutterPlatform extends PlatformInterface {
  /// Constructs a StorefrontFlutterPlatform.
  StorefrontFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static StorefrontFlutterPlatform _instance = MethodChannelStorefrontFlutter();

  /// The default instance of [StorefrontFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelStorefrontFlutter].
  static StorefrontFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StorefrontFlutterPlatform] when
  /// they register themselves.
  static set instance(StorefrontFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getStorefrontCountryCode() {
    throw UnimplementedError('getStorefrontCountryCode() has not been implemented.');
  }
}
