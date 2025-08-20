import 'package:flutter/foundation.dart' show immutable;

@immutable
class AttendanceDataPoint {
  final double value; // Y-axis value for the chart
  const AttendanceDataPoint({required this.value});
}

@immutable
class GradeItem {
  final Map<String, String> subject;
  final String score; // e.g., "92"
  final String gradeLetter; // e.g., "A"

  const GradeItem({required this.subject, required this.score, required this.gradeLetter});
}

@immutable
class ViolationItem {
  final Map<String, String> description;
  final int count;

  const ViolationItem({required this.description, required this.count});
}

@immutable
class NoteItem {
  final Map<String, String> type; // e.g., {'en': 'Positive Note', 'ar': 'ملاحظة إيجابية'}
  final Map<String, String> content;
  final Map<String, String> author; // e.g., {'en': 'Ms. Johnson', 'ar': 'السيدة جونسون'}


  const NoteItem({required this.type, required this.content, required this.author});
}

@immutable
class AcademicRecord {
  final String attendancePercentage;
  final String attendanceChange; // e.g., "+5%" or "-2%"
  final List<AttendanceDataPoint> attendanceHistory; // For the chart
  final List<GradeItem> grades;
  final List<ViolationItem> violations;
  final List<NoteItem> notes;

  const AcademicRecord({
    required this.attendancePercentage,
    required this.attendanceChange,
    required this.attendanceHistory,
    required this.grades,
    required this.violations,
    required this.notes,
  });

  static AcademicRecord get dummyAcademicRecord => AcademicRecord(
    attendancePercentage: '95%',
    attendanceChange: '+5%',
    attendanceHistory: const [ // Simplified, actual chart points would be more complex
      AttendanceDataPoint(value: 109), AttendanceDataPoint(value: 21),
      AttendanceDataPoint(value: 41), AttendanceDataPoint(value: 93),
      AttendanceDataPoint(value: 33), AttendanceDataPoint(value: 101),
      AttendanceDataPoint(value: 61), AttendanceDataPoint(value: 45),
      AttendanceDataPoint(value: 121), AttendanceDataPoint(value: 149),
      AttendanceDataPoint(value: 1), AttendanceDataPoint(value: 81),
      AttendanceDataPoint(value: 129), AttendanceDataPoint(value: 25),
    ],
    grades: const [
      GradeItem(subject: {'en': 'Math', 'ar': 'الرياضيات'}, score: '92', gradeLetter: 'A'),
      GradeItem(subject: {'en': 'Science', 'ar': 'العلوم'}, score: '88', gradeLetter: 'B+'),
      GradeItem(subject: {'en': 'English', 'ar': 'اللغة الإنجليزية'}, score: '95', gradeLetter: 'A+'),
      GradeItem(subject: {'en': 'History', 'ar': 'التاريخ'}, score: '85', gradeLetter: 'B'),
    ],
    violations: const [
      ViolationItem(description: {'en': 'Late to class', 'ar': 'متأخر عن الفصل'}, count: 1),
    ],
    notes: const [
      NoteItem(
        type: {'en': 'Positive Note', 'ar': 'ملاحظة إيجابية'},
        content: {
          'en': 'Sophia is a bright student and actively participates in class discussions. She excels in group projects and demonstrates strong analytical skills.',
          'ar': 'صوفيا طالبة ذكية وتشارك بنشاط في مناقشات الفصل. إنها تتفوق في المشاريع الجماعية وتظهر مهارات تحليلية قوية.'
        },
        author: {'en': 'Ms. Johnson', 'ar': 'السيدة جونسون'},
      ),
      NoteItem(
        type: {'en': 'Negative Note', 'ar': 'ملاحظة سلبية'},
        content: {
          'en': 'Sophia needs to improve her time management skills. She has been late to class twice this week, which affects her participation.',
          'ar': 'تحتاج صوفيا إلى تحسين مهارات إدارة الوقت لديها. لقد تأخرت عن الفصل مرتين هذا الأسبوع ، مما يؤثر على مشاركتها.'
        },
        author: {'en': 'Mr. Davis', 'ar': 'السيد ديفيس'},
      ),
    ],
  );
}

