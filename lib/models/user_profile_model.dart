import 'package:equatable/equatable.dart';

class UserProfile extends Equatable {
  final String id;
  final String name;
  final String phone;
  final String avatarUrl;
  // Add other relevant fields like email, address, etc.

  const UserProfile({
    required this.id,
    required this.name,
    required this.phone,
    required this.avatarUrl,
  });

  // Dummy data factory
  factory UserProfile.dummy() {
    return const UserProfile(
      id: 'user123',
      name: 'عمر يوسف', // Omar Yousef (example from image)
      phone: '0984984864',
      avatarUrl: 'https://i.pravatar.cc/150?u=omar', // Using pravatar for random avatars
    );
  }

  // For Equatable
  @override
  List<Object?> get props => [id, name, phone, avatarUrl];
}
