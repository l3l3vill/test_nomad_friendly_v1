import 'package:flutter/material.dart';

import '../presentation/wrapper.dart';

class AppRoutes{

    static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      // case Routes.homePageMap:
      //   return MaterialPageRoute(builder: (context) {
      //     final arguments = settings.arguments as Map<dynamic, dynamic> ;
      //     return CharacterProvider(characterId: arguments['id']); 
      //   });

      default:
        return MaterialPageRoute(builder: (context) {
          return const Wrapper();
        });
    }
  }

}