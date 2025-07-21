import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// Assuming you create this model
import 'package:charity/models/user_profile_model.dart'; // You'll need this

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  // Start with a more versatile state
  ProfileCubit() : super(const ProfileCurrentState(isLoadingProfile: true)) {
    // Initial data fetch if needed
    fetchUserProfileData();
  }

  // Helper to get current typed state if it's ProfileCurrentState
  ProfileCurrentState get _currentMainState =>
      state is ProfileCurrentState ? state as ProfileCurrentState : const ProfileCurrentState();

  // Helper to get ProfileLoaded state if that's what you're using for form
  ProfileLoaded get _currentLoadedFormState {
    if (state is ProfileLoaded) {
      return state as ProfileLoaded;
    }
    // Fallback or handle error if state is not ProfileLoaded when expected
    // This might happen if your drawer toggle logic only uses ProfileCurrentState
    // and form logic uses ProfileLoaded. Consider unifying.
    return const ProfileLoaded(firstName: "", lastName: "", phone: "");
  }


  void toggleDrawer() {
    // Always operate on ProfileCurrentState for drawer
    emit(_currentMainState.copyWith(isDrawerOpen: !_currentMainState.isDrawerOpen));
  }

  void openDrawer() {
    if (!_currentMainState.isDrawerOpen) {
      emit(_currentMainState.copyWith(isDrawerOpen: true));
    }
  }

  void closeDrawer() {
    if (_currentMainState.isDrawerOpen) {
      emit(_currentMainState.copyWith(isDrawerOpen: false));
    }
  }

  // --- Form/Data Logic (Adapt from your existing Cubit) ---
  Future<void> fetchUserProfileData() async {
    emit(_currentMainState.copyWith(isLoadingProfile: true));
    // Simulate API Call
    await Future.delayed(const Duration(seconds: 1));
    // Replace with your actual data fetching
    emit(ProfileLoaded( // Or update ProfileCurrentState directly
      firstName: "أحمد", // Example
      lastName: "محمود",
      phone: "0912345678",
      isEditing: false,
      isDrawerOpen: _currentMainState.isDrawerOpen, // Preserve drawer state
    ));
    // If using unified ProfileCurrentState:
    // emit(_currentMainState.copyWith(
    //   firstName: "أحمد",
    //   lastName: "محمود",
    //   phone: "0912345678",
    //   isEditing: false,
    //   isLoadingProfile: false,
    //   userProfile: UserProfile.dummy() // Update your dummy data or real data
    // ));
  }


  void toggleEdit() {
    if (state is ProfileLoaded) {
      final current = state as ProfileLoaded;
      emit(current.copyWith(isEditing: !current.isEditing));
    } else if (state is ProfileCurrentState) { // If using unified state
      final current = state as ProfileCurrentState;
      emit(current.copyWith(isEditing: !current.isEditing));
    }
  }

  void updateFirstName(String value) {
    if (state is ProfileLoaded) {
      final current = state as ProfileLoaded;
      emit(current.copyWith(firstName: value));
    } else if (state is ProfileCurrentState) {
      final current = state as ProfileCurrentState;
      emit(current.copyWith(firstName: value));
    }
  }

  void updateLastName(String value) {
    if (state is ProfileLoaded) {
      final current = state as ProfileLoaded;
      emit(current.copyWith(lastName: value));
    } else if (state is ProfileCurrentState) {
      final current = state as ProfileCurrentState;
      emit(current.copyWith(lastName: value));
    }
  }
  void updatePhone(String value) {
    if (state is ProfileLoaded) {
      final current = state as ProfileLoaded;
      emit(current.copyWith(phone: value));
    } else if (state is ProfileCurrentState) {
      final current = state as ProfileCurrentState;
      emit(current.copyWith(phone: value));
    }
  }


  void saveProfile() {
    if (state is ProfileLoaded) {
      final current = state as ProfileLoaded;
      // Add save logic here (e.g., API call)
      print('Saving: ${current.firstName}, ${current.lastName}, ${current.phone}');
      emit(current.copyWith(isEditing: false)); // Exit editing mode
    } else if (state is ProfileCurrentState) {
      final current = state as ProfileCurrentState;
      print('Saving: ${current.firstName}, ${current.lastName}, ${current.phone}');
      emit(current.copyWith(isEditing: false));
    }
  }
}

// Add UserProfile model (lib/models/user_profile_model.dart)
// if you haven't already from previous suggestions
class UserProfile extends Equatable {
  final String id;
  final String name;
  final String phone;
  final String avatarUrl;

  const UserProfile({
    required this.id,
    required this.name,
    required this.phone,
    required this.avatarUrl,
  });

  factory UserProfile.dummy() {
    return const UserProfile(
      id: 'user123',
      name: 'عمر يوسف',
      phone: '0984984864',
      avatarUrl: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150&h=150&fit=crop&crop=face',
    );
  }

  @override
  List<Object?> get props => [id, name, phone, avatarUrl];
}
