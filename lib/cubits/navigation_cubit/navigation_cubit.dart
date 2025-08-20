
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_state.dart'; // Create this file next

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(currentIndex: 0)); // Default to home

  void navigateTo(int index) {
    emit(NavigationState(currentIndex: index));
  }
}

