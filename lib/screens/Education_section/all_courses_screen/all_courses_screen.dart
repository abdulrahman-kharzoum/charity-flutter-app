import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/education/all_courses_cubit/all_courses_cubit.dart';
import 'package:charity/models/course_detail_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/cubits/navigation_cubit/navigation_cubit.dart';
import 'package:charity/widgets/custom_bottom_nav_bar.dart';
class AllCoursesScreen extends StatelessWidget {
  const AllCoursesScreen({super.key});

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
      ),
      body: BlocConsumer<AllCoursesCubit, AllCoursesState>(
        listener: (context, state) {
          if (state is CourseSubscriptionSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(
                      'Subscription requested for course ID: ${state.courseId}')),
            );
          } else if (state is CourseSubscriptionError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: ${state.message}')),
            );
          }
        },
        builder: (context, state) {
          if (state is AllCoursesLoading || state is AllCoursesInitial) {
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
          } else if (state is AllCoursesLoaded) {
            if (state.courses.isEmpty) {
              return Center(
                  child: Text(l10n.noItemsAvailable,
                      style: textTheme.bodyMedium?.copyWith(fontFamily: 'Lexend', color: AppColors.textSecondary)));
            }
            // Determine if a specific course is in the "subscribing" loading state
            String? loadingCourseId;
            final currentBlocState = context.read<AllCoursesCubit>().state; // Get current state directly from cubit for this check
            if (currentBlocState is CourseSubscriptionLoading) {
              loadingCourseId = currentBlocState.courseId;
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
                      letterSpacing: -0.015 * 22, // Tailwind tracking-[-0.015em]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
                  child: Text(
                    l10n.exploreNewCoursesSubtitle,
                    textAlign: isArabic ? TextAlign.right : TextAlign.left,
                    style: TextStyle(
                      color: AppColors.textPrimary, // Matching HTML text-[#111418]
                      fontFamily: 'Lexend',
                      fontSize: 16, // text-base
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ...state.courses
                    .map((course) => _buildCourseItem(context, l10n, course, loadingCourseId == course.id, isArabic)) // MODIFIED LINE
                    .toList(),
              ],
            );
          } else if (state is AllCoursesError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error_outline, color: Colors.red, size: 48),
                      const SizedBox(height: 16),
                      Text(l10n.errorLoadingCourses,
                          textAlign: TextAlign.center,
                          style: textTheme.titleMedium?.copyWith(fontFamily: 'Lexend', color: AppColors.textPrimary)),
                      const SizedBox(height: 8),
                      Text(state.message,
                          textAlign: TextAlign.center,
                          style: textTheme.bodySmall?.copyWith(fontFamily: 'Lexend', color: AppColors.textSecondary)),
                      const SizedBox(height: 20),
                      ElevatedButton.icon(
                        icon: Icon(Icons.refresh),
                        label: Text("Retry", style: TextStyle(fontFamily: 'Lexend')),
                        onPressed: () {
                          context.read<AllCoursesCubit>().fetchAllCourses();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryBlue,
                          foregroundColor: Colors.white,
                        ),
                      )
                    ]),
              ),
            );
          }
          return Center(child: Text("Unhandled state", style: textTheme.bodyMedium?.copyWith(fontFamily: 'Lexend')));
        },
      ),

    );
  }

  Widget _buildCourseItem(BuildContext context, AppLocalizations l10n, CourseDetailModel course, bool isSubscribing, bool isArabic) {

    String getLocalized(String key) {
      switch (key) {
        case 'courseMathExplorersTitle': return l10n.courseMathExplorersTitle;
        case 'courseMathExplorersSubtitle': return l10n.courseMathExplorersSubtitle;
        case 'courseCreativeWritingTitle': return l10n.courseCreativeWritingTitle;
        case 'courseCreativeWritingSubtitle': return l10n.courseCreativeWritingSubtitle;
        case 'courseScienceAdventuresTitle': return l10n.courseScienceAdventuresTitle;
        case 'courseScienceAdventuresSubtitle': return l10n.courseScienceAdventuresSubtitle;
        case 'courseArtDesignTitle': return l10n.courseArtDesignTitle;
        case 'courseArtDesignSubtitle': return l10n.courseArtDesignSubtitle;
        default: return key;
      }
    }


    Widget textColumn = Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribute space
        children: [
          Column(
            crossAxisAlignment: isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox( // Wrap with SizedBox to constrain width if needed, or ensure parent has finite width
                width: double.infinity, // Or some other constraint
                child: Text(
                  getLocalized(course.title),
                  textAlign: isArabic ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontFamily: 'Lexend',
                    fontSize: 16, // text-base
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 4), // gap-1 from HTML (approx)
              Text(
                getLocalized(course.subtitle),
                textAlign: isArabic ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: AppColors.textSecondary, // text-[#60748a]
                  fontFamily: 'Lexend',
                  fontSize: 14, // text-sm
                  fontWeight: FontWeight.normal,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          const SizedBox(height: 16), // gap-4 (overall column gap)
          Align(
            alignment: isArabic ? Alignment.centerRight : Alignment.centerLeft,
            child: ElevatedButton(
              onPressed: course.isSubscribed || isSubscribing
                  ? null // Disable if already subscribed or in process
                  : () {
                context.read<AllCoursesCubit>().requestSubscription(course.id);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: course.isSubscribed ? AppColors.lightGrey : AppColors.lightGreyBackground, // bg-[#f0f2f5]
                foregroundColor: AppColors.textPrimary, // text-[#111418]
                elevation: 0,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0), // px-4
                minimumSize: const Size(84, 32), // min-w-[84px] h-8
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // rounded-xl
                ),
              ),
              child: isSubscribing
                  ? SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryBlue),
                ),
              )
                  : Text(
                course.isSubscribed ? "Subscribed" : l10n.requestSubscriptionButton, // Handle subscribed state
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 14, // text-sm
                  fontWeight: FontWeight.w500, // font-medium
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
        aspectRatio: 16 / 9, // aspect-video
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), // rounded-xl
            image: DecorationImage(
              image: NetworkImage(course.imageUrl),
              fit: BoxFit.cover,
              // Optional: Add an error builder for the image
              onError: (exception, stackTrace) {
                // Handle error, e.g., show a placeholder
              },
            ),
          ),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(16), // p-4 from HTML
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // items-stretch
          children: isArabic
              ? [imageColumn, const SizedBox(width: 16), textColumn] // gap-4
              : [textColumn, const SizedBox(width: 16), imageColumn], // gap-4
        ),
      ),
    );
  }
}
