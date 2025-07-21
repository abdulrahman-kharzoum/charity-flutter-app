part of 'profile_cubit.dart'; // Make sure this line is correct

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object?> get props => [];
}

class ProfileInitial extends ProfileState {} // Good to have an initial state

// This state will hold drawer status, loading, error, AND profile data
class ProfileCurrentState extends ProfileState { // Renamed for clarity from previous examples
  final bool isDrawerOpen;
  final UserProfile? userProfile; // Assuming you have a UserProfile model
  final bool isLoadingProfile;
  final String? error;
  final bool isEditing; // From your existing ProfileLoaded

  // Add other fields from your ProfileLoaded if necessary,
  // or keep UserProfile comprehensive
  final String firstName;
  final String lastName;
  final String phone;


  const ProfileCurrentState({
    this.isDrawerOpen = false,
    this.userProfile, // You might populate this from firstName, lastName, phone
    this.isLoadingProfile = false,
    this.error,
    this.isEditing = false,
    this.firstName = "", // Default values
    this.lastName = "",
    this.phone = "",
  });

  // Factory constructor to adapt from your old ProfileLoaded logic
  factory ProfileCurrentState.fromProfileLoaded({
    required bool isDrawerOpen, // Keep drawer state
    required bool isLoadingProfile,
    String? error,
    required bool isEditing,
    required String firstName,
    required String lastName,
    required String phone,
    UserProfile? userProfile, // Optional: if you map to UserProfile
  }) {
    return ProfileCurrentState(
      isDrawerOpen: isDrawerOpen,
      isLoadingProfile: isLoadingProfile,
      error: error,
      isEditing: isEditing,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      userProfile: userProfile ?? UserProfile( // Create UserProfile if not provided
          id: 'temp_id', // Or generate one
          name: '$firstName $lastName',
          phone: phone,
          avatarUrl: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150&h=150&fit=crop&crop=face' // Default avatar
      ),
    );
  }


  ProfileCurrentState copyWith({
    bool? isDrawerOpen,
    UserProfile? userProfile,
    bool? isLoadingProfile,
    String? error,
    bool? isEditing,
    String? firstName,
    String? lastName,
    String? phone,
    bool clearError = false,
  }) {
    return ProfileCurrentState(
      isDrawerOpen: isDrawerOpen ?? this.isDrawerOpen,
      userProfile: userProfile ?? this.userProfile,
      isLoadingProfile: isLoadingProfile ?? this.isLoadingProfile,
      error: clearError ? null : error ?? this.error,
      isEditing: isEditing ?? this.isEditing,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
    );
  }

  @override
  List<Object?> get props => [
    isDrawerOpen,
    userProfile,
    isLoadingProfile,
    error,
    isEditing,
    firstName,
    lastName,
    phone,
  ];
}

// You might still want a specific loaded state for when data is definitely there for the form
// Or just rely on userProfile not being null in ProfileCurrentState
class ProfileLoaded extends ProfileState { // Keep this if your Cubit emits it for form logic
  final String firstName;
  final String lastName;
  final String phone;
  final bool isEditing;
  // Add isDrawerOpen here too if you transition to this state
  // and need to preserve drawer status
  final bool isDrawerOpen;


  const ProfileLoaded({
    required this.firstName,
    required this.lastName,
    required this.phone,
    this.isEditing = false,
    this.isDrawerOpen = false, // Add this
  });

  ProfileLoaded copyWith({
    String? firstName,
    String? lastName,
    String? phone,
    bool? isEditing,
    bool? isDrawerOpen,
  }) {
    return ProfileLoaded(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      isEditing: isEditing ?? this.isEditing,
      isDrawerOpen: isDrawerOpen ?? this.isDrawerOpen,
    );
  }

  @override
  List<Object?> get props => [firstName, lastName, phone, isEditing, isDrawerOpen];
}
