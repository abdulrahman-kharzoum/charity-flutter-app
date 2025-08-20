import 'package:equatable/equatable.dart';

class CourseDetailModel extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final bool isSubscribed; // Assuming you might want to track subscription status

  const CourseDetailModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.isSubscribed = false,
  });

  @override
  List<Object?> get props => [id, title, subtitle, imageUrl, isSubscribed];

  // Optional: CopyWith method for easy state updates
  CourseDetailModel copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? imageUrl,
    bool? isSubscribed,
  }) {
    return CourseDetailModel(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      imageUrl: imageUrl ?? this.imageUrl,
      isSubscribed: isSubscribed ?? this.isSubscribed,
    );
  }
}
