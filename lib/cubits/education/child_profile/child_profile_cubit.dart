import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:charity/models/child_profile_model.dart';
import 'package:charity/models/child_course_model.dart';

part 'child_profile_state.dart';

class ChildProfileCubit extends Cubit<ChildProfileState> {
  ChildProfileCubit() : super(const ChildProfileState());

  Future<void> fetchChildProfile(String childId) async {
    emit(state.copyWith(status: ChildProfileStatus.loading));
    try {
      // Simulate API call
      await Future.delayed(const Duration(milliseconds: 500));
      final dummyProfile = ChildProfile.dummyProfile; // In a real app, fetch based on childId
      emit(state.copyWith(status: ChildProfileStatus.success, profile: dummyProfile));
    } catch (e) {
      emit(state.copyWith(status: ChildProfileStatus.failure, error: e.toString()));
    }
  }

  void changeTab(int index) {
    emit(state.copyWith(selectedTabIndex: index));
  }

  void updateAppBarTitleVisibility(bool show) {
    if (state.showAppBarTitle != show) {
      emit(state.copyWith(showAppBarTitle: show));
    }
  }

  // Helper to get localized text from a map
  String getLocalizedText(Map<String, String> localizedMap, String languageCode) {
    return localizedMap[languageCode] ?? localizedMap['en'] ?? 'N/A';
  }
}
