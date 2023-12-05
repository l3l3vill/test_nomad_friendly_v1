// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nomad_friendly_app/config/enums/nav_bar_item.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(const NavigationBarState( navBarItemEnum: NavBarItemEnum.explore, navBarIndex: 0));

  void getNavigationBarItem(NavBarItemEnum navBarItemEnum){
    switch(navBarItemEnum){
      case NavBarItemEnum.suggestedPlaces:
        emit(const NavigationBarState(navBarIndex: 0 ,navBarItemEnum: NavBarItemEnum.suggestedPlaces ));
        break;
      case NavBarItemEnum.explore:
        emit(const NavigationBarState(navBarIndex: 1 , navBarItemEnum:NavBarItemEnum.explore));
        break;
      case NavBarItemEnum.visitedPlaces:
        emit(const NavigationBarState(navBarIndex: 2 ,navBarItemEnum: NavBarItemEnum.visitedPlaces));
        break;
      case NavBarItemEnum.profile:
        emit(const NavigationBarState(navBarIndex: 3 ,navBarItemEnum: NavBarItemEnum.profile));
        break;
    }

  }
}
