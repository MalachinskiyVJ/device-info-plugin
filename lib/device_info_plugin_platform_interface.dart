import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'device_info_plugin_method_channel.dart';

abstract class DeviceInfoPluginPlatform extends PlatformInterface {
  /// Constructs a DeviceInfoPluginPlatform.
  DeviceInfoPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeviceInfoPluginPlatform _instance = MethodChannelDeviceInfoPlugin();

  /// The default instance of [DeviceInfoPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeviceInfoPlugin].
  static DeviceInfoPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeviceInfoPluginPlatform] when
  /// they register themselves.
  static set instance(DeviceInfoPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getDeviceInfo() {
    throw UnimplementedError('getDeviceInfo() has not been implemented.');
  }
}
