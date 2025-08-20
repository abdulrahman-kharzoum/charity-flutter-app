// lib/models/child_model.dart
class ChildModel {
  final String id;
  final String name;
  final int age;
  final String imageUrl;
  final int courseCount;
  final double balance;

  ChildModel({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrl,
    required this.courseCount,
    required this.balance,
  });
}

// lib/models/course_model.dart
class CourseModel {
  final String id;
  final String title;
  final String ageRange;
  final String imageUrl;

  CourseModel({
    required this.id,
    required this.title,
    required this.ageRange,
    required this.imageUrl,
  });
}