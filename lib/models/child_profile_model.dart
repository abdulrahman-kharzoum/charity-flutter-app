import 'package:charity/models/financial_record_model.dart';

import 'academic_record_model.dart';
import 'child_course_model.dart';

class ChildProfile {
  final String id;
  final Map<String, String> name;
  final String studentId;
  final Map<String, String> gradeLevel; // e.g., {'en': 'Grade 5', 'ar': 'الصف الخامس'}
  final String avatarUrl;
  final List<ChildCourse> courses;
  final AcademicRecord? academicRecord; // New
  final FinancialRecord? financialRecord; // New

  const ChildProfile({
    required this.id,
    required this.name,
    required this.studentId,
    required this.gradeLevel,
    required this.avatarUrl,
    required this.courses,
    this.academicRecord,
    this.financialRecord,
  });

  // Updated dummy data factory
  static ChildProfile get dummyProfile => ChildProfile(
    id: 'child123',
    name: {'en': 'Sophia Carter', 'ar': 'صوفيا كارتر'}, // Matched to financial statement
    studentId: '123456',
    gradeLevel: {'en': 'Grade 5', 'ar': 'الصف الخامس'},
    avatarUrl:
    'https://lh3.googleusercontent.com/aida-public/AB6AXuCGxIjL08hJR1e4DM4T8ZkkGhN1pQByCQ-RfMAx0zC9bU_OF-6rSUZq_myLcSmfoY5mEvBhNZJ5oQs5UxCQWTQTeYIrmAxySAgVj84edXjjzOvcZ0FbzelvHHoKk8aBCNl3MRebrStB9FxBeAzs3P3TZrIpGvDgRDf61Qr0NZyNZvh9hZ6n963yL_dRondBX6F2QjAgJYzQQnSTo6zLNCweEgiONC4fUkvIzmf070SWEm56W3tC42rHZqr0xzdEF_llCQJvOAUyHV_X', // Matched to financial
    courses: ChildCourse.dummyCourses,
    academicRecord: AcademicRecord.dummyAcademicRecord,
    financialRecord: FinancialRecord.dummyFinancialRecord,
  );
}