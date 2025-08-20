import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/education/child_profile/child_profile_cubit.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/models/academic_record_model.dart';
import 'package:flutter_svg/flutter_svg.dart'; // For the chart (if you keep it as SVG)
// Or use a charting library like fl_chart

class AcademicProgressTabScreen extends StatelessWidget {
  const AcademicProgressTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cubit = context.read<ChildProfileCubit>();
    final languageCode = l10n.localeName;
    final isArabic = languageCode == 'ar';

    return BlocBuilder<ChildProfileCubit, ChildProfileState>(
      builder: (context, state) {
        if (state.profile?.academicRecord == null) {
          return Center(child: Text(l10n.noAcademicData, style: const TextStyle(fontFamily: 'Lexend')));
        }
        final academicRecord = state.profile!.academicRecord!;

        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Attendance Record Section
              _buildSectionTitle(l10n.attendanceRecordTitle, context, isArabic),
              _buildAttendanceCard(academicRecord, l10n, context, cubit, languageCode, isArabic),
              const SizedBox(height: 16),

              // Grades and Violations Section
              _buildSectionTitle(l10n.gradesAndViolationsTitle, context, isArabic),
              ...academicRecord.grades.map((grade) => _buildGradeItem(grade, l10n, cubit, languageCode, isArabic, context)),
              ...academicRecord.violations.map((violation) => _buildViolationItem(violation, l10n, cubit, languageCode, isArabic, context)),
              const SizedBox(height: 16),

              // Positive and Negative Notes Section
              _buildSectionTitle(l10n.positiveAndNegativeNotesTitle, context, isArabic),
              ...academicRecord.notes.map((note) => _buildNoteItem(note, l10n, cubit, languageCode, isArabic, context)),
              const SizedBox(height: 20), // Bottom padding
            ],
          ),
        );
      },
    );
  }

  Widget _buildSectionTitle(String title, BuildContext context, bool isArabic) {
    return Padding(
      padding: EdgeInsets.only(
        left: isArabic ? 0 : 16.0,
        right: isArabic ? 16.0 : 0,
        top: 12.0,
        bottom: 8.0,
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.textPrimary,
          fontFamily: 'Lexend',
          fontSize: 20, // text-[22px] is approx 20-22
          fontWeight: FontWeight.bold,
        ),
        textAlign: isArabic ? TextAlign.right : TextAlign.left,
      ),
    );
  }

  Widget _buildAttendanceCard(AcademicRecord record, AppLocalizations l10n, BuildContext context, ChildProfileCubit cubit, String languageCode, bool isArabic) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 1,
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                l10n.attendanceLabel,
                style: const TextStyle(color: AppColors.textPrimary, fontFamily: 'Lexend', fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: isArabic ? TextAlign.right : TextAlign.left,
              ),
              Text(
                record.attendancePercentage,
                style: const TextStyle(color: AppColors.textPrimary, fontFamily: 'Lexend', fontSize: 32, fontWeight: FontWeight.bold),
                textAlign: isArabic ? TextAlign.right : TextAlign.left,
              ),
              Row(
                mainAxisAlignment: isArabic ? MainAxisAlignment.end : MainAxisAlignment.start,
                children: [
                  Text(
                    l10n.last30DaysLabel,
                    style: const TextStyle(color: AppColors.textSecondary, fontFamily: 'Lexend', fontSize: 16),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    record.attendanceChange,
                    style: TextStyle(
                        color: record.attendanceChange.startsWith('+') ? AppColors.requestStatusAccepted : AppColors.darkRed, // Define these colors
                        fontFamily: 'Lexend',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Placeholder for the chart - This will be complex to replicate exactly from SVG path
              // You might want to use a charting library like fl_chart or simplify it
              Container(
                height: 150,
                alignment: Alignment.center,
                child: AttendanceLineChart(dataPoints: record.attendanceHistory), // Pass data points here
                // child: Text('[Chart Placeholder - Implement with fl_chart or similar]', style: TextStyle(fontFamily: 'Lexend')),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(l10n.mondayShort, style: const TextStyle(color: AppColors.textSecondary, fontFamily: 'Lexend', fontSize: 13, fontWeight: FontWeight.bold)),
                  Text(l10n.tuesdayShort, style: const TextStyle(color: AppColors.textSecondary, fontFamily: 'Lexend', fontSize: 13, fontWeight: FontWeight.bold)),
                  Text(l10n.wednesdayShort, style: const TextStyle(color: AppColors.textSecondary, fontFamily: 'Lexend', fontSize: 13, fontWeight: FontWeight.bold)),
                  Text(l10n.thursdayShort, style: const TextStyle(color: AppColors.textSecondary, fontFamily: 'Lexend', fontSize: 13, fontWeight: FontWeight.bold)),
                  Text(l10n.fridayShort, style: const TextStyle(color: AppColors.textSecondary, fontFamily: 'Lexend', fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGradeItem(GradeItem grade, AppLocalizations l10n, ChildProfileCubit cubit, String languageCode, bool isArabic, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      child: Material( // Added Material for InkWell splash
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: () {}, // Optional: action on tap
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: AppColors.gray200, width: 0.5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                    children: [
                      Text(
                        grade.score, // HTML shows score first for some reason, then subject
                        style: const TextStyle(color: AppColors.textPrimary, fontFamily: 'Lexend', fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: isArabic ? TextAlign.right : TextAlign.left,
                      ),
                      Text(
                        cubit.getLocalizedText(grade.subject, languageCode),
                        style: const TextStyle(color: AppColors.textSecondary, fontFamily: 'Lexend', fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                        textAlign: isArabic ? TextAlign.right : TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Text(
                  grade.gradeLetter,
                  style: const TextStyle(color: AppColors.textPrimary, fontFamily: 'Lexend', fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildViolationItem(ViolationItem violation, AppLocalizations l10n, ChildProfileCubit cubit, String languageCode, bool isArabic, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      child: Material(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: AppColors.gray200, width: 0.5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                    children: [
                      Text(
                        cubit.getLocalizedText(violation.description, languageCode),
                        style: const TextStyle(color: AppColors.textPrimary, fontFamily: 'Lexend', fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: isArabic ? TextAlign.right : TextAlign.left,
                      ),
                      Text(
                        l10n.violationLabel,
                        style: const TextStyle(color: AppColors.textSecondary, fontFamily: 'Lexend', fontSize: 14),
                        textAlign: isArabic ? TextAlign.right : TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Text(
                  violation.count.toString(),
                  style: const TextStyle(color: AppColors.textPrimary, fontFamily: 'Lexend', fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildNoteItem(NoteItem note, AppLocalizations l10n, ChildProfileCubit cubit, String languageCode, bool isArabic, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 1,
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                cubit.getLocalizedText(note.type, languageCode),
                style: const TextStyle(color: AppColors.textPrimary, fontFamily: 'Lexend', fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: isArabic ? TextAlign.right : TextAlign.left,
              ),
              const SizedBox(height: 4),
              Text(
                cubit.getLocalizedText(note.content, languageCode),
                style: const TextStyle(color: AppColors.textSecondary, fontFamily: 'Lexend', fontSize: 14),
                textAlign: isArabic ? TextAlign.right : TextAlign.left,
              ),
              const SizedBox(height: 8),
              Text(
                cubit.getLocalizedText(note.author, languageCode),
                style: const TextStyle(color: AppColors.textSecondary, fontFamily: 'Lexend', fontSize: 14, fontStyle: FontStyle.italic),
                textAlign: isArabic ? TextAlign.right : TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Dummy Chart - Replace with a proper charting library like fl_chart for real implementation
class AttendanceLineChart extends StatelessWidget {
  final List<AttendanceDataPoint> dataPoints;

  const AttendanceLineChart({super.key, required this.dataPoints});

  @override
  Widget build(BuildContext context) {
    // This is a very basic representation.
    // For a real chart, use a package like fl_chart.
    if (dataPoints.isEmpty) {
      return const Center(child: Text("No attendance data for chart"));
    }

    // Determine min/max for scaling (simplified)
    double minY = dataPoints.map((p) => p.value).reduce((a, b) => a < b ? a : b);
    double maxY = dataPoints.map((p) => p.value).reduce((a, b) => a > b ? a : b);
    if (maxY == minY) maxY += 1; // Avoid division by zero if all values are same

    return LayoutBuilder(
        builder: (context, constraints) {
          final double chartWidth = constraints.maxWidth;
          final double chartHeight = constraints.maxHeight;
          final double stepX = chartWidth / (dataPoints.length -1 > 0 ? dataPoints.length -1 : 1) ;

          return CustomPaint(
            size: Size(chartWidth, chartHeight),
            painter: _LineChartPainter(dataPoints, minY, maxY, stepX, isArabic: Localizations.localeOf(context).languageCode == 'ar'),
          );
        }
    );
  }
}

class _LineChartPainter extends CustomPainter {
  final List<AttendanceDataPoint> dataPoints;
  final double minY;
  final double maxY;
  final double stepX;
  final bool isArabic;


  _LineChartPainter(this.dataPoints, this.minY, this.maxY, this.stepX, {required this.isArabic});


  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.textSecondary // Line color from SVG stroke="#6a7581"
      ..strokeWidth = 2.0 // from SVG stroke-width="3" (adjust for screen density)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round; // from SVG stroke-linecap="round"

    final path = Path();

    for (int i = 0; i < dataPoints.length; i++) {
      final double x = isArabic ? size.width - (i * stepX) : i * stepX;
      final double y = size.height - ((dataPoints[i].value - minY) / (maxY - minY) * size.height);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    canvas.drawPath(path, paint);

    // Optional: Add gradient fill like in SVG (more complex)
    // You would define a gradient shader for the paint and draw another path (closed)
    // final gradientPaint = Paint()
    //   ..shader = ui.Gradient.linear(
    //     Offset(size.width / 2, 0),
    //     Offset(size.width / 2, size.height),
    //     [AppColors.gray100, AppColors.gray100.withOpacity(0)], // From SVG fill
    //   );
    // final fillPath = Path.from(path);
    // fillPath.lineTo(isArabic ? 0 : size.width, size.height);
    // fillPath.lineTo(isArabic ? size.width : 0, size.height);
    // fillPath.close();
    // canvas.drawPath(fillPath, gradientPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
