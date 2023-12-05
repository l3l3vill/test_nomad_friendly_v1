part of 'navigation_bar_cubit.dart';

class NavigationBarState extends Equatable {
  final NavBarItemEnum navBarItemEnum;
  final int navBarIndex;

  const NavigationBarState({
    this.navBarItemEnum = NavBarItemEnum.suggestedPlaces,
    this.navBarIndex = 0,
  });
  @override
  List<Object> get props => [navBarItemEnum, navBarIndex];
}


