
import 'storefront_flutter_platform_interface.dart';

class StorefrontFlutter {
  Future<String?> getStorefrontCountryCode() {
    return StorefrontFlutterPlatform.instance.getStorefrontCountryCode();
  }
}
