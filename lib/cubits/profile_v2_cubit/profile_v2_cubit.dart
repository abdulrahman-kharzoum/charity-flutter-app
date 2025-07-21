import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:charity/models/user_profile_model.dart'; // Import your model

part 'profile_v2_state.dart';

class ProfileV2Cubit extends Cubit<ProfileV2State> {
  ProfileV2Cubit() : super(const ProfileV2CurrentState());

  // Helper to get current typed state
  ProfileV2CurrentState get _currentState => state as ProfileV2CurrentState;

  void toggleDrawer() {
    emit(_currentState.copyWith(isDrawerOpen: !_currentState.isDrawerOpen));
  }

  void openDrawer() {
    if (!_currentState.isDrawerOpen) {
      emit(_currentState.copyWith(isDrawerOpen: true));
    }
  }

  void closeDrawer() {
    if (_currentState.isDrawerOpen) {
      emit(_currentState.copyWith(isDrawerOpen: false));
    }
  }

  Future<void> fetchUserProfile() async {
    if (_currentState.isLoadingProfile) return; // Prevent multiple simultaneous loads

    emit(_currentState.copyWith(isLoadingProfile: true, clearError: true));

    try {
      // Simulate API call with dummy data
      await Future.delayed(const Duration(seconds: 2));

      // Replace this with your actual API call logic
      // For example:
      // final response = await MyApiService.getUserProfile();
      // if (response.success) {
      //   final userProfile = UserProfile.fromJson(response.data);
      //   emit(_currentState.copyWith(userProfile: userProfile, isLoadingProfile: false));
      // } else {
      //   emit(_currentState.copyWith(error: "Failed to load profile", isLoadingProfile: false));
      // }

      final dummyProfile = UserProfile.dummy();
      emit(_currentState.copyWith(userProfile: dummyProfile, isLoadingProfile: false));

    } catch (e) {
      // In a real app, distinguish different types of errors
      emit(_currentState.copyWith(error: "An unexpected error occurred: ${e.toString()}", isLoadingProfile: false));
    }
  }

// You can add methods to update profile data later
// Future<void> updateUserProfile(UserProfile updatedProfile) async { ... }
}
    