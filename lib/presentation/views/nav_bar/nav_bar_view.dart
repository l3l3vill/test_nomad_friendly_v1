
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nomad_friendly_app/config/enums/nav_bar_item.dart';
import 'package:nomad_friendly_app/presentation/blocs/nav_bar/navigation_bar_cubit.dart';

import '../../../assets/assets.dart';
import '../../../config/constants/app_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NavBarView extends StatelessWidget {
  final int currentIndex;
  const NavBarView({
    required this.currentIndex,
    super.key
  });
  @override
  Widget build(BuildContext context) {
     NavigationBarCubit navBarBloc = BlocProvider.of<NavigationBarCubit>(context);
        return NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100 
          ),
          child: NavigationBar(
            selectedIndex: currentIndex,
            destinations: [
              NavigationDestination(
                icon: SvgPicture.asset(Assets.suggestedIcon), 
                label: AppStrings.suggested,
              ),         
              NavigationDestination(
                icon: SvgPicture.asset(Assets.exploreIcon) , 
                label: AppStrings.explore,
              ),
              NavigationDestination(
                icon: SvgPicture.asset(Assets.visitedIcon) , 
                label: AppStrings.visited,
              ), 
              NavigationDestination(
                icon: SvgPicture.asset(Assets.userIcon) , 
                label: AppStrings.profile,
              )  
            ],
            onDestinationSelected: (index) {
              if(index == 0){
                navBarBloc.getNavigationBarItem(NavBarItemEnum.suggestedPlaces);
              }else if(index == 1){
                navBarBloc.getNavigationBarItem(NavBarItemEnum.explore);
              }else if(index == 2){
                navBarBloc.getNavigationBarItem(NavBarItemEnum.visitedPlaces);
              }else if(index == 3){
                navBarBloc.getNavigationBarItem(NavBarItemEnum.profile);
              }
            },
          ),
        );
  }
}