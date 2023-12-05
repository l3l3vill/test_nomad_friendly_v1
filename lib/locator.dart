import 'package:get_it/get_it.dart';
import 'package:nomad_friendly_app/presentation/blocs/home_page/home_page_bloc.dart';
import 'package:nomad_friendly_app/presentation/blocs/nav_bar/navigation_bar_cubit.dart';

import 'presentation/blocs/gobal_app_conf/global_app_conf_bloc.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupLocator() async{

  //Bloc
  getIt.registerFactory(() => GlobalAppConfBloc());
  getIt.registerFactory(() => HomePageBloc());

  //Cubit
  getIt.registerFactory(() => NavigationBarCubit());


}