import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class AuthController extends GetxController {
  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> authenticateIsAvailable() async {
    final isAvailable = await auth.canCheckBiometrics;
    final isDeviceSupported = await auth.isDeviceSupported(); 
    return isAvailable && isDeviceSupported;
  }

  Future<bool> startAuthentication() async {
    bool authenticated = false;
    List<BiometricType> availableBiometrics = await auth.getAvailableBiometrics();
    if(Platform.isIOS) {
      if(availableBiometrics.contains(BiometricType.face)){
        authenticated =  await _startBioMetricAuth("Gunakan Face ID untuk melakukan autentikasi.");
      }else if(availableBiometrics.contains(BiometricType.fingerprint)){
        authenticated =  await _startBioMetricAuth("Gunakan Touch ID untuk melakukan autentikasi.");
      }
    }else{
      authenticated =  await _startBioMetricAuth("Gunakan Fingerprint untuk melakukan autentikasi.");
    }
    return authenticated;
  }

  Future<bool> _startBioMetricAuth(String message) async {
    bool authenticated = false;
    try {
      bool didAuthenticate = await auth.authenticate(localizedReason: message, options: const AuthenticationOptions(
        useErrorDialogs: true,
        stickyAuth: true,
        biometricOnly: true,
      ));

      if(didAuthenticate){
        print("Autentikasi sukses");
      }else{
        print("Autentikasi gagal");
      }

      authenticated = didAuthenticate;
    } on PlatformException catch (e) {
      print(e);

    }
    return authenticated;
  }
}
