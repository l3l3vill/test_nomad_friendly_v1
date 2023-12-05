import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nomad_friendly_app/presentation/blocs/gobal_app_conf/global_app_conf_bloc.dart';

import '../locator.dart';
import 'views/homepage/home_page_provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GlobalAppConfBloc>(create: (context)=> getIt.get<GlobalAppConfBloc>()),
      ], 
      child: BlocBuilder<GlobalAppConfBloc, GlobalAppConfState>
        (builder: (context, state) {
          if(state is GlobalAppInitialState){
            return const HomePageProvider();
          }
          return const CircularProgressIndicator();        
        },
      )
    );
  }
}