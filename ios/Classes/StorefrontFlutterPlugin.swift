import Flutter
import UIKit
import StoreKit

public class StorefrontFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "storefront_flutter", binaryMessenger: registrar.messenger())
    let instance = StorefrontFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let countryCode = SKPaymentQueue.default().storefront?.countryCode
    result(countryCode)
  }
}
