import 'package:asaxiy_clone/domain/repository/repository.dart';
import 'package:asaxiy_clone/domain/repository/repository_impl.dart';
import 'package:get_it/get_it.dart';

import '../main_provider.dart';

GetIt di = GetIt.instance;

void diSetup() {
  di.registerLazySingleton<RepositoryImpl>(() => RepositoryImpl());
  di.registerSingleton<Repository>(RepositoryImpl());
  di.registerLazySingleton<MainProvider>(() => MainProvider());
}
