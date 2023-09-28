import 'package:get_it/get_it.dart';

import '../../features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import '../database/cache/cache_helper.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());

}
