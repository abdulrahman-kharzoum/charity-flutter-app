import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/core/services/status.dart';
import 'package:charity/features/Education/cubits/get_all_new_courses_cubit/get_all_new_courses_cubit.dart';
import 'package:charity/features/Education/models/course_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';

class AllCoursesScreen extends StatefulWidget {
  const AllCoursesScreen({super.key});

  @override
  State<AllCoursesScreen> createState() => _AllCoursesScreenState();
}

class _AllCoursesScreenState extends State<AllCoursesScreen> {
  String? _selectedStatus;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    final isArabic = l10n.localeName == 'ar';

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          l10n.allCoursesScreenTitle,
          style: TextStyle(
            color: AppColors.textPrimary,
            fontFamily: 'Lexend',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          DropdownButton<String>(
            value: _selectedStatus,
            hint: Text(l10n.filter),
            items: [
              DropdownMenuItem(
                value: null,
                child: Text(l10n.all),
              ),
              ...[
                {'value': 'created', 'label': l10n.created},
                {'value': 'announced', 'label': l10n.announced},
                {'value': 'started', 'label': l10n.started},
                {'value': 'finished', 'label': l10n.finished},
              ]
                  .map((status) => DropdownMenuItem(
                        value: status['value'],
                        child: Text(status['label']!),
                      ))
                  .toList(),
            ],
            onChanged: (value) {
              setState(() {
                _selectedStatus = value;
              });
              context.read<GetAllNewCoursesCubit>().getAllNewCourses(status: value);
            },
          ),
        ],
      ),
      body: BlocConsumer<GetAllNewCoursesCubit, GetAllNewCoursesState>(
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
            child: Image.network(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuA2PpdnhMXwtHUEeQ1DMQo4slYy7GlB_vJ-ZESzm38W2ITCIdz69cNcNt9TRzgODSTAz7p8b8hFRLmeTRWR-MFwALkcZVU8JYcYfQd7pQs-ooTQBsqvXsRokk7OM4_smL8n01CXHetfIKIfHZne1wkXXHkRzXjB4P3MA7mJbdjc9IXXMzAbVVjdukBitlzitpcz-UNwwlOevnyf39ptXI91Gku7BpspYaWUN61KJ0Baze9r52lwFf8wAbMo8U_PQpGdHHS8GHH_3Yul',
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
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: isArabic
              ? [imageColumn, const SizedBox(width: 16), textColumn]
              : [textColumn, const SizedBox(width: 16), imageColumn],
        ),
      ),
    );
  }
}