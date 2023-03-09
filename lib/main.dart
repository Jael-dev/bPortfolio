import 'package:flutter/material.dart' ;
import 'package:flutter/services.dart' show SystemChrome, DeviceOrientation;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:portfolio_bonas/src/app.dart';
import 'package:portfolio_bonas/src/utils/provider_logger.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();
  // await Firebase.initializeApp( 
  //   options: DefaultFirebaseOptions.currentPlatform,
  // // );
  await Hive.initFlutter();
  await Hive.openBox('user_box');
 
 

print("entered");
  runApp(ProviderScope(
      //? the provider logger here is primarily to help debug the app state
      //? and is not required for the app to function
      //? it can be removed if you don't need it's just a utility
      observers: [ProviderLogger()],
      child: BonasPortfolio(settingsController)));
}
