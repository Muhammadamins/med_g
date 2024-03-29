
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_bar_event.dart';
part 'navigation_bar_state.dart';

class NavigationBarBloc extends Bloc<NavigationBarEvent, NavigationBarState> {
  NavigationBarBloc() : super(NavigationBarState(activeIndex: 0)) {
    on<IsActiveColor>((event, emit) {
      emit(state.copyWith(activeIndex: event.index));
    });
  }
}

