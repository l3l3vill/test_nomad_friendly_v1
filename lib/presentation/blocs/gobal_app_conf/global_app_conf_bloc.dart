import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'global_app_conf_event.dart';
part 'global_app_conf_state.dart';

class GlobalAppConfBloc extends Bloc<GlobalAppConfEvent, GlobalAppConfState> {
  GlobalAppConfBloc() : super(GlobalAppInitialState()) {
    on<GlobalAppConfEvent>((event, emit) {
      // TODO: implement event handler for tutorial, splash and cookies
    });
  }
}
