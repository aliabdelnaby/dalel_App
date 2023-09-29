import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/dalel_app.dart';
import 'core/database/cache/cache_helper.dart';
import 'core/functions/check_state_changes.dart';
import 'core/services/service_locator.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  checkStateChanges();
  runApp(const Dalel());
}
