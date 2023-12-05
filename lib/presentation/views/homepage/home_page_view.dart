import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nomad_friendly_app/config/enums/nav_bar_item.dart';
import 'package:nomad_friendly_app/presentation/theme/app_colors.dart';

import '../../blocs/nav_bar/navigation_bar_cubit.dart';
import '../explore/explore_provider.dart';
import '../nav_bar/nav_bar_view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundApp,
      body: SafeArea(
        child: BlocBuilder<NavigationBarCubit, NavigationBarState>(
          builder:(context, state) {
          if(state.navBarItemEnum == NavBarItemEnum.suggestedPlaces){
            return const ExploreProvider();
          }else if (state.navBarItemEnum == NavBarItemEnum.explore){
            return const Text('ExploreProvider()');
          }else if(state.navBarItemEnum == NavBarItemEnum.visitedPlaces){
            return const Text('VisitedProvider()');
          }else if(state.navBarItemEnum == NavBarItemEnum.profile){
            return const Text('VisitedProfile()');
          }
          return const Text('loader()');
        }),
      ),
      bottomNavigationBar: BlocBuilder<NavigationBarCubit, NavigationBarState>(
        builder:(context, state){
          return NavBarView(currentIndex: state.navBarIndex);
        }
      )
    );
  }

}