part of 'profile_v2_cubit.dart';

abstract class ProfileV2State extends Equatable {
  const ProfileV2State();

  @override
  List<Object?> get props => [];
}

// This state will now hold the drawer status AND profile data status
class ProfileV2CurrentState extends ProfileV2State {
  final bool isDrawerOpen;
  final UserProfile? userProfile; // Nullable if not loaded yet
  final bool isLoadingProfile;
  final String? error;

  const ProfileV2CurrentState({
    this.isDrawerOpen = false,
    this.userProfile,
    this.isLoadingProfile = false,
    this.error,
  });

  ProfileV2CurrentState copyWith({
    bool? isDrawerOpen,
    UserProfile? userProfile,
    bool? isLoadingProfile,
    String? error,
    bool clearError = false, // To explicitly clear error
  }) {
    return ProfileV2CurrentState(
      isDrawerOpen: isDrawerOpen ?? this.isDrawerOpen,
      userProfile: userProfile ?? this.userProfile,
      isLoadingProfile: isLoadingProfile ?? this.isLoadingProfile,
      error: clearError ? null : error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [isDrawerOpen, userProfile, isLoadingProfile, error];
}
    