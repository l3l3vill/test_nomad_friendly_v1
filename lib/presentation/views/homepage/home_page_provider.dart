

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nomad_friendly_app/locator.dart';
import 'package:nomad_friendly_app/presentation/views/homepage/home_page_view.dart';

import '../../blocs/gobal_app_conf/global_app_conf_bloc.dart';
import '../../blocs/home_page/home_page_bloc.dart';
import '../../blocs/nav_bar/navigation_bar_cubit.dart';

class HomePageProvider extends StatelessWidget {
  const HomePageProvider({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<GlobalAppConfBloc>(create: (context) => getIt.get<GlobalAppConfBloc>()),
        BlocProvider<HomePageBloc>(create: (context) => getIt.get<HomePageBloc>()),
        BlocProvider<NavigationBarCubit>(create: (context) => getIt.get<NavigationBarCubit>()),
      ], 
      child: const HomePageView()
      );
  }
}