part of 'navigation_bar_bloc.dart';

@immutable
sealed class NavigationBarEvent {}

class IsActiveColor extends NavigationBarEvent {
  final int index;
  final bool isActive;

  IsActiveColor({
    required this.index,
    required this.isActive,
  });
}