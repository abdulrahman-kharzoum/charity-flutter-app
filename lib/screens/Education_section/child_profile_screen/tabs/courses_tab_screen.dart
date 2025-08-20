import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:charity/models/child_course_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

import '../../../../cubits/education/child_profile/child_profile_cubit.dart'; // For icons

class CoursesTabScreen extends StatelessWidget {
  const CoursesTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cubit = context.read<ChildProfileCubit>();
    final languageCode = l10n.localeName;

    return BlocBuilder<ChildProfileCubit, ChildProfileState>(
      builder: (context, state) {
        if (state.status == ChildProfileStatus.loading && state.profile == null) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.profile == null) {
          return Center(child: Text(l10n.noDataAvailable));
        }

        final courses = state.profile!.courses;
        final currentCourses = courses.where((c) => c.status == 'current').toList();
        final pastCourses = courses.where((c) => c.status == 'past').toList();

        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle(l10n.currentSectionTitle, context),
              if (currentCourses.isEmpty)
                _buildNoCoursesMessage(l10n.noCoursesAvailable, context)
              else
                ...currentCourses.map((course) => _buildCourseItem(course, context, cubit, languageCode)),

              const SizedBox(height: 16),
              _buildSectionTitle(l10n.pastSectionTitle, context),
              if (pastCourses.isEmpty)
                _buildNoCoursesMessage(l10n.noCoursesAvailable, context)
              else
                ...pastCourses.map((course) => _buildCourseItem(course, context, cubit, languageCode)),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSectionTitle(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.textPrimary, // text-[#111418]
          fontFamily: 'Lexend',
          fontSize: 18, // text-lg
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildNoCoursesMessage(String message, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Center(
        child: Text(
          message,
          style: TextStyle(
            color: AppColors.textSecondary,
            fontFamily: 'Lexend',
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildCourseItem(ChildCourse course, BuildContext context, ChildProfileCubit cubit, String languageCode) {
    final l10n = AppLocalizations.of(context)!;
    final isArabic = l10n.localeName == 'ar';

    return InkWell(
      onTap: () {
        // Handle course item tap if needed
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: AppColors.white, // Or a light grey if preferred
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.gray200, width: 1),
            boxShadow: [
              BoxShadow(
                color: AppColors.gray200.withOpacity(0.5),
                blurRadius: 5,
                offset: const Offset(0, 2),
              )
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.lightGreyBackground, // bg-[#f0f2f5]
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  LucideIcons.book_open,
                  color: AppColors.textPrimary,
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    Text(
                      cubit.getLocalizedText(course.title, languageCode),
                      style: TextStyle(
                        color: AppColors.textPrimary, // text-[#111418]
                        fontFamily: 'Lexend',
                        fontSize: 16, // text-base
                        fontWeight: FontWeight.w500, // HTML uses medium
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: isArabic ? TextAlign.right : TextAlign.left,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      cubit.getLocalizedText(course.subtitle, languageCode),
                      style: TextStyle(
                        color: AppColors.textSecondary, // text-[#60748a]
                        fontFamily: 'Lexend',
                        fontSize: 14, // text-sm
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: isArabic ? TextAlign.right : TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
