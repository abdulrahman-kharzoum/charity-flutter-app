part of 'child_profile_cubit.dart';

enum ChildProfileStatus { initial, loading, success, failure }

@immutable
class ChildProfileState extends Equatable {
  final ChildProfileStatus status;
  final ChildProfile? profile;
  final int selectedTabIndex;
  final bool showAppBarTitle; // True when child's name should be in AppBar
  final String? error;

  const ChildProfileState({
    this.status = ChildProfileStatus.initial,
    this.profile,
    this.selectedTabIndex = 0,
    this.showAppBarTitle = false,
    this.error,
  });

  ChildProfileState copyWith({
    ChildProfileStatus? status,
    ChildProfile? profile,
    int? selectedTabIndex,
    bool? showAppBarTitle,
    String? error,
    bool clearError = false,
  }) {
    return ChildProfileState(
      status: status ?? this.status,
      profile: profile ?? this.profile,
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
      showAppBarTitle: showAppBarTitle ?? this.showAppBarTitle,
      error: clearError ? null : error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, profile, selectedTabIndex, showAppBarTitle, error];
}