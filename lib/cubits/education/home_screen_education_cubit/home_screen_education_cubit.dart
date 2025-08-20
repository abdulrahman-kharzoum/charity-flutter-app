import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_education_state.dart';

class HomeScreenEducationCubit extends Cubit<HomeScreenEducationState> {
  HomeScreenEducationCubit() : super(HomeScreenEducationInitial());
}
