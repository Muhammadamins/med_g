part of 'navigation_bar_bloc.dart';

class NavigationBarState {

  final int activeIndex;
  NavigationBarState({required this.activeIndex});

  NavigationBarState copyWith({
    int? activeIndex,
  }) {
    return NavigationBarState(
      activeIndex: activeIndex ?? this.activeIndex,
    );
  }

  @override
  String toString() {
    return 'State index $activeIndex';
  }

  @override
  bool operator ==(covariant NavigationBarState other) {
    if (identical(this, other)) return true;

    return
          other.activeIndex == activeIndex;
  }

  @override
  int get hashCode {
    return activeIndex.hashCode;
  }
}

