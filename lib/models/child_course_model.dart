import 'package:flutter/foundation.dart' show immutable;

@immutable
class ChildCourse {
  final String id;
  final Map<String, String> title; // For localization
  final Map<String, String> subtitle; // For localization
  final String status; // "current" or "past"

  const ChildCourse({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.status,
  });

  // Dummy data factory
  static List<ChildCourse> get dummyCourses => [
    const ChildCourse(
      id: 'course1',
      title: {'en': 'Algebra', 'ar': 'الجبر'},
      subtitle: {'en': 'Math 101', 'ar': 'رياضيات ١٠١'},
      status: 'current',
    ),
    const ChildCourse(
      id: 'course2',
      title: {'en': 'Biology', 'ar': 'علم الأحياء'},
      subtitle: {'en': 'Science 101', 'ar': 'علوم ١٠١'},
      status: 'current',
    ),
    const ChildCourse(
      id: 'course3',
      title: {'en': 'World History', 'ar': 'تاريخ العالم'},
      subtitle: {'en': 'History 101', 'ar': 'تاريخ ١٠١'},
      status: 'current',
    ),
    const ChildCourse(
      id: 'course4',
      title: {'en': 'Literature', 'ar': 'الأدب'},
      subtitle: {'en': 'English 101', 'ar': 'انجليزي ١٠١'},
      status: 'past',
    ),
  ];
}
