import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/features/Education/models/course_model.dart';
import 'package:charity/core/shared/components/spacing.dart';
import 'package:charity/core/animation/dialogs/dialogs.dart';
import 'package:charity/core/services/status.dart';
import 'package:charity/features/Education/cubits/get_education_home_cubit/get_education_home_cubit.dart';
import 'package:charity/features/Education/Enroll/cubits/enroll_in_course_cubit/enroll_in_course_cubit.dart';
import 'package:charity/features/Education/Enroll/models/enroll_in_course_request_body_model.dart';
import 'package:charity/features/Education/models/child_model.dart';
import 'package:charity/features/Education/models/education_home_model.dart';


class CourseDetailsScreen extends StatefulWidget {
  final CourseModel course;

  const CourseDetailsScreen({super.key, required this.course});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  late final GetEducationHomeCubit _getEducationHomeCubit;
  late final EnrollInCourseCubit _enrollInCourseCubit;

  @override
  void initState() {
    super.initState();
    _getEducationHomeCubit = context.read<GetEducationHomeCubit>();
    _enrollInCourseCubit = context.read<EnrollInCourseCubit>();
  }

  @override
  void dispose() {
    _getEducationHomeCubit.close();
    _enrollInCourseCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: MultiBlocListener(
        listeners: [
          BlocListener<GetEducationHomeCubit, dynamic>( // Changed to dynamic since GetEducationHomeState is not directly imported
            listener: (context, state) {
              if (state.status == SubmissionStatus.loading) {
                loadingDialog(
                    context: context,
                    mediaQuery: MediaQuery.of(context).size,
                    title: l10n.loadingCourses);
              } else if (state.status == SubmissionStatus.success) {
                Navigator.pop(context); // Dismiss loading dialog
                if (state.data != null && state.data!.children.isNotEmpty) {
                  _showChildSelectionDialog(context, state.data!.children, l10n, widget.course.id, _enrollInCourseCubit);
                } else {
                  errorDialog(context: context, text: l10n.noChildrenInfo);
                }
              } else if (state.status == SubmissionStatus.error) {
                Navigator.pop(context); // Dismiss loading dialog
                errorDialog(
                    context: context,
                    text: state.failure?.message ?? l10n.errorLoadingCourses);
              }
            },
          ),
          BlocListener<EnrollInCourseCubit, dynamic>( // Changed to dynamic since EnrollInCourseState is not directly imported
            listener: (context, state) {
              if (state.status == SubmissionStatus.loading) {
                loadingDialog(
                    context: context,
                    mediaQuery: MediaQuery.of(context).size,
                    title: l10n.confirm); // Using a generic loading message
              } else if (state.status == SubmissionStatus.success) {
                Navigator.pop(context); // Dismiss loading dialog
                successDialog(
                    context: context, text: l10n.requestSuccessMessage); // Generic success
              } else if (state.status == SubmissionStatus.error) {
                Navigator.pop(context); // Dismiss loading dialog
                errorDialog(
                    context: context,
                    text: state.failure?.message ?? l10n.requestFailureMessageGeneric);
              }
            },
          ),
        ],
        child: Column(
          children: [
            Container(
              color: AppColors.white,
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: SafeArea(
                bottom: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon:
                            Icon(Icons.arrow_back, color: AppColors.textPrimary),
                        onPressed: () => Navigator.of(context).pop(),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ),
                    Text(
                      l10n.courseDetailsTitle,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lexend',
                        letterSpacing: -0.015 * 18,
                      ),
                    ),
                    const SizedBox(width: 48), // Placeholder for balance
                  ],
                ),
              ),
            ),
            // Add the course image here
            Container(
              height: 200, // Or any desired height
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/course_img.png'), // Default image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
                    child: Text(
                      widget.course.name,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lexend',
                        letterSpacing: -0.015 * 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        _buildDetailRow(l10n.statusLabel, widget.course.status),
                        _buildDetailRow(l10n.startDateLabel,
                            widget.course.startDate ?? l10n.notAvailable),
                        _buildDetailRow(l10n.priceLabel,
                            '\$${widget.course.price.toStringAsFixed(2)}'),
                        _buildDetailRow(
                            l10n.paymentDeadlineLabel,
                            '${widget.course.paymentDeadlineDays} ${l10n.days}'),
                      ],
                    ),
                  ),
                  VerticalSpacing.medium(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                    child: Text(
                      l10n.teacher,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lexend',
                        letterSpacing: -0.015 * 22,
                      ),
                    ),
                  ),
                  if (widget.course.teacher != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 28,
                            backgroundColor: AppColors.lightGreyBackground,
                            backgroundImage: null, // TeacherModel does not have imageUrl
                            child: Icon(Icons.person,
                                color: AppColors.textSecondary), // Placeholder icon
                          ),
                          HorizontalSpacing.medium(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.course.teacher!.fullName, // Use fullName
                                style: const TextStyle(
                                  color: AppColors.textPrimary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Lexend',
                                ),
                              ),
                              Text(
                                'Email: ${widget.course.teacher!.email ?? l10n.notAvailable}\n Phone: ${widget.course.teacher!.phoneNumber ?? l10n.notAvailable}', // Use phoneNumber
                                style: const TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Lexend',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: Text(
                      l10n.noTeacherBio, // TeacherModel does not have bio
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Lexend',
                      ),
                    ),
                  ),
                  VerticalSpacing.medium(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                    child: Text(
                      l10n.subject,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lexend',
                        letterSpacing: -0.015 * 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                    child: Text(
                      widget.course.subject.name,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Lexend',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _getEducationHomeCubit.getEducationHome();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryBlue,
                    foregroundColor: AppColors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    l10n.enrollButton,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lexend',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              fontFamily: 'Lexend',
            ),
          ),
          VerticalSpacing.small(),
          Text(
            value,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 16,
              fontWeight: FontWeight.normal,
              fontFamily: 'Lexend',
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _showChildSelectionDialog(BuildContext context, List<ChildModel> children, AppLocalizations l10n, int courseId, EnrollInCourseCubit enrollInCourseCubit) async {
  final selectedChild = await childSelectionDialog(
    context: context,
    children: children,
  );

  if (selectedChild != null) {
    final enrollBody = EnrollInCourseRequestBodyModel(
      child_id: selectedChild.id,
      course_id: courseId,
    );
    enrollInCourseCubit.enrollInCourse(body: enrollBody, context: context);
  }
}