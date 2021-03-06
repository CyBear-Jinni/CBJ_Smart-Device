import 'dart:io';

import 'package:smart_device_dart/core/shared_variables.dart';

class TurnPinOnWiringPiSetupSys {
  Future<ProcessResult> TurnThePinOn(String physicalPinNumber) async {
    return Process.run(
        '${SharedVariables.getProjectRootDirectoryPath()}/scripts/cScripts/phisicalComponents/sendingSignals/onSignal/turnOnWiringPiSetupSys',
        [physicalPinNumber]);
  }
}
