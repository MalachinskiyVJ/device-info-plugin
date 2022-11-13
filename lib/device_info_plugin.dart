import 'device_info_plugin_platform_interface.dart';

class DeviceInfoPlugin {
  Future<String?> getDeviceInfo() {
    return DeviceInfoPluginPlatform.instance.getDeviceInfo();
  }
}
