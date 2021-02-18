import 'package:smart_device_dart/core/shared_variables.dart';
import 'package:smart_device_dart/features/smart_device/application/usecases/core_u/smart_device_manager_u.dart';
import 'package:smart_device_dart/features/smart_device/infrastructure/datasources/core_d/manage_physical_components/device_pin_manager.dart';

void main(List<String> arguments) async {
  print('Smart device is activated');

  //  await configureInjection(Env.dev_pi);
  try {
    SharedVariables(arguments[0]);
  } catch (error) {
    print('Path/argument 1 is not specified');
    print('error: ' + error.toString());
  }

  //  Getting physical device type from outside, and checking if this device configuration exist
  await DevicePinListManager().setPhysicalDeviceTypeByHostName();

  SmartDeviceManagerU();
}
