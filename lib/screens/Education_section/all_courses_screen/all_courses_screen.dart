import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:charity/core/services/status.dart';
import 'package:charity/features/Education/cubits/get_all_new_courses_cubit/get_all_new_courses_cubit.dart';
import 'package:charity/features/Education/models/course_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/core/shared/components/spacing.dart';
import 'package:charity/screens/Education_section/course_details_screen/course_details_screen.dart';
import 'package:charity/features/Education/cubits/get_education_home_cubit/get_education_home_cubit.dart';
import 'package:charity/features/Education/Enroll/cubits/enroll_in_course_cubit/enroll_in_course_cubit.dart';
import 'package:charity/features/Education/repo/education_repository.dart';
import 'package:charity/features/Education/Enroll/repo/enrollment_repository.dart';
import 'package:charity/core/services/service_locator.dart'; // Import service_locator.dart

class AllCoursesScreen extends StatefulWidget {
  const AllCoursesScreen({super.key});

  @override
  State<AllCoursesScreen> createState() => _AllCoursesScreenState();
}

class _AllCoursesScreenState extends State<AllCoursesScreen> {
  String? _selectedStatus;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<GetAllNewCoursesCubit>().getAllNewCourses(status: _selectedStatus);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    final isArabic = l10n.localeName == 'ar';

    return Scaffold(
      backgroundColor: AppColors.white,

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterChip(
                    avatar: Icon(Icons.all_inclusive, color: _selectedStatus == null ? AppColors.white : AppColors.primaryBlue),
                    label: Text(l10n.all),
                    selected: _selectedStatus == null,
                    onSelected: (selected) {
                      setState(() {
                        _selectedStatus = null;
                      });
                      context.read<GetAllNewCoursesCubit>().getAllNewCourses(status: null);
                    },
                    selectedColor: AppColors.primary500,
                    showCheckmark: false, // Removed checkmark
                    labelStyle: TextStyle(
                      color: _selectedStatus == null ? AppColors.white : AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  FilterChip(
                    avatar: Icon(Icons.create, color: _selectedStatus == 'created' ? AppColors.white : AppColors.primaryBlue),
                    label: Text(l10n.created),
                    selected: _selectedStatus == 'created',
                    onSelected: (selected) {
                      setState(() {
                        _selectedStatus = 'created';
                      });
                      context.read<GetAllNewCoursesCubit>().getAllNewCourses(status: 'created');
                    },
                    selectedColor: AppColors.primary500,
                    showCheckmark: false, // Removed checkmark
                    labelStyle: TextStyle(
                      color: _selectedStatus == 'created' ? AppColors.white : AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  FilterChip(
                    avatar: Icon(Icons.announcement, color: _selectedStatus == 'announced' ? AppColors.white : AppColors.primaryBlue),
                    label: Text(l10n.announced),
                    selected: _selectedStatus == 'announced',
                    onSelected: (selected) {
                      setState(() {
                        _selectedStatus = 'announced';
                      });
                      context.read<GetAllNewCoursesCubit>().getAllNewCourses(status: 'announced');
                    },
                    selectedColor: AppColors.primary500,
                    showCheckmark: false, // Removed checkmark
                    labelStyle: TextStyle(
                      color: _selectedStatus == 'announced' ? AppColors.white : AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  FilterChip(
                    avatar: Icon(Icons.play_arrow, color: _selectedStatus == 'started' ? AppColors.white : AppColors.primaryBlue),
                    label: Text(l10n.started),
                    selected: _selectedStatus == 'started',
                    onSelected: (selected) {
                      setState(() {
                        _selectedStatus = 'started';
                      });
                      context.read<GetAllNewCoursesCubit>().getAllNewCourses(status: 'started');
                    },
                    selectedColor: AppColors.primary500,
                    showCheckmark: false, // Removed checkmark
                    labelStyle: TextStyle(
                      color: _selectedStatus == 'started' ? AppColors.white : AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  FilterChip(
                    avatar: Icon(Icons.check_circle, color: _selectedStatus == 'finished' ? AppColors.white : AppColors.primaryBlue),
                    label: Text(l10n.finished),
                    selected: _selectedStatus == 'finished',
                    onSelected: (selected) {
                      setState(() {
                        _selectedStatus = 'finished';
                      });
                      context.read<GetAllNewCoursesCubit>().getAllNewCourses(status: 'finished');
                    },
                    selectedColor: AppColors.primary500,
                    showCheckmark: false, // Removed checkmark
                    labelStyle: TextStyle(
                      color: _selectedStatus == 'finished' ? AppColors.white : AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BlocConsumer<GetAllNewCoursesCubit, GetAllNewCoursesState>(
              listener: (context, state) {
                if (state.status == SubmissionStatus.error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.failure?.message ?? 'Error')),
                  );
                }
              },
              builder: (context, state) {
                if (state.status == SubmissionStatus.loading) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(color: AppColors.primaryBlue),
                        const SizedBox(height: 16),
                        Text(l10n.loadingCourses, style: textTheme.bodyMedium?.copyWith(fontFamily: 'Lexend', color: AppColors.textSecondary)),
                      ],
                    ),
                  );
                } else if (state.status == SubmissionStatus.success) {
                  final courses = state.data as List<CourseModel>;
                  if (courses.isEmpty) {
                    return Center(
                        child: Text(l10n.noItemsAvailable,
                            style: textTheme.bodyMedium?.copyWith(fontFamily: 'Lexend', color: AppColors.textSecondary)));
                  }
                  return ListView(
                    padding: const EdgeInsets.only(bottom: 20),
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
                        child: Text(
                          l10n.exploreNewCoursesTitle,
                          textAlign: isArabic ? TextAlign.right : TextAlign.left,
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontFamily: 'Lexend',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.015 * 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
                        child: Text(
                          l10n.exploreNewCoursesSubtitle,
                          textAlign: isArabic ? TextAlign.right : TextAlign.left,
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontFamily: 'Lexend',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      ...courses
                          .map((course) => _buildCourseItem(context, l10n, course, isArabic))
                          .toList(),
                    ],
                  );
                }
                return Center(child: Text("Unhandled state", style: textTheme.bodyMedium?.copyWith(fontFamily: 'Lexend')));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseItem(BuildContext context, AppLocalizations l10n, CourseModel course, bool isArabic) {
    Widget textColumn = Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  course.name,
                  textAlign: isArabic ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontFamily: 'Lexend',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                course.subject.name,
                textAlign: isArabic ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: AppColors.textSecondary,
                  fontFamily: 'Lexend',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Align(
            alignment: isArabic ? Alignment.centerRight : Alignment.centerLeft,
            child: ElevatedButton(
              onPressed: () {
                // Handle subscription
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.lightGreyBackground,
                foregroundColor: AppColors.textPrimary,
                elevation: 0,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                minimumSize: const Size(84, 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                l10n.requestSubscriptionButton,
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );

    Widget imageColumn = Expanded(
      flex: 1,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.lightGreyBackground,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              'assets/images/course_img.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: AppColors.lightGreyBackground,
                child: const Icon(Icons.school_outlined, size: 40, color: AppColors.textSecondary),
              ),
            ),
          ),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: GestureDetector( // Wrap with GestureDetector
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return MultiBlocProvider(
                providers: [
                  BlocProvider<GetEducationHomeCubit>(
                    create: (context) => sl<GetEducationHomeCubit>(),
                  ),
                  BlocProvider<EnrollInCourseCubit>(
                    create: (context) => sl<EnrollInCourseCubit>(),
                  ),
                ],
                child: CourseDetailsScreen(course: course),
              );
            }),
          );
        },
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: isArabic
                ? [imageColumn, const SizedBox(width: 16), textColumn]
                : [textColumn, const SizedBox(width: 16), imageColumn],
          ),
        ),
      ),
    );
  }
}