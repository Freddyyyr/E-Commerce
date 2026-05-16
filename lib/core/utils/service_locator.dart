import 'package:e_commerce/core/networking/dio_helper.dart';
import 'package:e_commerce/core/utils/storage_helper.dart';
import 'package:e_commerce/features/auth/cubit/auth_cubit.dart';
import 'package:e_commerce/features/auth/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void setupServiceLocator() {
  DioHelper dio = DioHelper();

  sl.registerSingleton<DioHelper>(dio);

  sl.registerLazySingleton(() => StorageHelper());

  sl.registerLazySingleton(() => AuthRepo(sl<DioHelper>()));

  sl.registerFactory(() => AuthCubit(sl<AuthRepo>()));
}
