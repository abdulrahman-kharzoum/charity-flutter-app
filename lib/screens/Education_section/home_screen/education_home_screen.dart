import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart'; // Import Dio
import 'package:charity/core/services/api_services.dart'; // Import ApiService
import 'package:charity/features/Education/repo/education_repository.dart'; // Import EducationRepository
import 'package:charity/features/Education/models/child_model.dart' as edu;
import 'package:charity/features/Education/models/course_model.dart' as edu;
import 'package:charity/features/Education/models/education_home_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/core/services/status.dart'; // Import SubmissionStatus
import 'package:charity/features/Education/cubits/get_education_home_cubit/get_education_home_cubit.dart'; // Correct cubit import
import 'package:charity/core/shared/local_network.dart'; // Correct import for CacheNetwork
import 'package:charity/features/auth/models/user_model.dart'; // Import UserModel
import 'package:charity/features/Education/cubits/get_all_new_courses_cubit/get_all_new_courses_cubit.dart';
import '../../../cubits/education/child_profile/child_profile_cubit.dart';
import '../all_courses_screen/all_courses_screen.dart';
import '../child_profile_screen/child_profile_screen.dart';

class EduHomeScreen extends StatefulWidget {
  const EduHomeScreen({super.key});

  @override
  State<EduHomeScreen> createState() => _EduHomeScreenState();
}

class _EduHomeScreenState extends State<EduHomeScreen> {
  int _selectedIndex = 0; // For bottom navigation

  @override
  void initState() {
    super.initState();
    context.read<GetEducationHomeCubit>().getEducationHome(); // Correct cubit call
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 4) { // Settings is the 5th item (index 4)
      Navigator.pushNamed(context, '/settings');
    }
    // else if (index == 1) { Navigator.pushNamed(context, '/children'); }
    // Add other navigation cases
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocBuilder<GetEducationHomeCubit, GetEducationHomeState>(
        builder: (context, state) {
          if (state.status == SubmissionStatus.loading || state.status == SubmissionStatus.initial) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == SubmissionStatus.error) {
            return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Error: ${state.failure?.message ?? 'Unknown error'}', textAlign: TextAlign.center),
                ));
          }
          if (state.status == SubmissionStatus.success && state.data != null) {
            final educationHomeModel = state.data!;
            return Column(
              children: [
                _buildAppBar(context, l10n),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      _buildGreeting(context, l10n, CacheNetwork.getUser()?.firstName ?? ''),
                      _buildSectionTitle(context, l10n.myChildren),
                      _buildHorizontalCardList<edu.ChildModel>(
                        context,
                        l10n,
                        educationHomeModel.children, // Access children from model
                            (child) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) => ChildProfileCubit(),
                                        child: ChildProfileScreen(childId: child.id.toString()),
                                      ),
                                    ),
                                  );
                                },
                                child: _buildChildCard(context, l10n, child)),
                      ),
                      _buildSectionTitle(context, l10n.newCourses),
                      _buildHorizontalCardList<edu.CourseModel>( // Use edu.CourseModel
                        context,
                        l10n,
                        educationHomeModel.newCourses, // Access newCourses from model
                            (course) => _buildCourseCard(context, l10n, course),
                      ),
                      _buildViewAllButton(context, l10n),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, AppLocalizations l10n) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 48,
              height: 48,
              child: Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: AppColors.lightGreyBackground,
                  backgroundImage: const NetworkImage(
                      "https://lh3.googleusercontent.com/aida-public/AB6AXuAxxemeKv1q4vXWk0wQf_5jqYuoNCmXfZzO1Kv1edZtp16AlCIvIf8LNGrCE_nzlasCo6Fv8PWgye59ZCF-UI5UCEzuDnUlSITzXVkz8BHcP-KKF2E-_pjg7yj19gRZWwXU8BX91vPe-37sodJXq8yMmy6lD79zH14SZd-GtG_RVIEGFLYe7UgxZc5-z2RjBrFz_4TTs6hD2ElVTxQzBObKMTxTfLXV4IgWtLPPpk9LtOI9-GNhnUzcIuyFFadWp5StNIb3bnmYQ8lu"),
                  onBackgroundImageError: (_, __) {},
                ),
              ),
            ),
            Text(
              l10n.appName,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lexend',
                letterSpacing: -0.015 * 18,
              ),
            ),
            SizedBox(
              width: 48,
              height: 48,
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(Icons.settings_outlined, color: AppColors.textPrimary, size: 24),
                  onPressed: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGreeting(BuildContext context, AppLocalizations l10n, String userName) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    final textAlign = isRtl ? TextAlign.right : TextAlign.left;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Text(
        l10n.greeting(userName),
        style: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lexend',
          height: 1.5,
        ),
        textAlign: textAlign,
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lexend',
          letterSpacing: -0.015 * 22,
        ),
      ),
    );
  }

  Widget _buildHorizontalCardList<T>(
      BuildContext context,
      AppLocalizations l10n,
      List<T> items,
      Widget Function(T item) cardBuilder,
      ) {
    if (items.isEmpty) {
      return SizedBox(
        height: 233,
        child: Center(child: Text(l10n.noItemsAvailable)),
      );
    }
    return SizedBox(
      height: 232,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => cardBuilder(items[index]),
        separatorBuilder: (context, index) => const SizedBox(width: 12),
      ),
    );
  }

  Widget _buildChildCard(BuildContext context, AppLocalizations l10n, edu.ChildModel child) {
    final imageUrl = 'https://lh3.googleusercontent.com/aida-public/AB6AXuCP-H2t-4gRAT_hI_QlN643afsofEKi5vZI0acupQIeMrV2eaYhfUiU7jC5xRCZEFAih_YmGsBqgHu0joDbnuChFf-hXcQX7B6MOBfDJixqz28gM5R4r6t_oxws0MnxNUlDKoXEwyUV9klEVeIpGOqccTdI0s5qKtsSsiorZAcCMq3RbzAadH_Ddh0Fe5-dIbS-Q7Upzo-_Rgzwz3H4ni-E-boGGZKqHBnD7QZ2RhuIrTYIyh6lEHkhiDW3SPWumvQqhwTMJQUCLea6';
    final courseCount = child.coursesCount ?? 0;

    return Container(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: AppColors.lightGreyBackground,
                  child: const Icon(Icons.person_outline, size: 40, color: AppColors.textSecondary),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              "${child.name}, ${child.age}",
              style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lexend'),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              "${l10n.coursesLabel(courseCount)}",
              style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Lexend'),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(BuildContext context, AppLocalizations l10n, edu.CourseModel course) {
    final imageUrl = 'https://lh3.googleusercontent.com/aida-public/AB6AXuA2PpdnhMXwtHUEeQ1DMQo4slYy7GlB_vJ-ZESzm38W2ITCIdz69cNcNt9TRzgODSTAz7p8b8hFRLmeTRWR-MFwALkcZVU8JYcYfQd7pQs-ooTQBsqvXsRokk7OM4_smL8n01CXHetfIKIfHZne1wkXXHkRzXjB4P3MA7mJbdjc9IXXMzAbVVjdukBitlzitpcz-UNwwlOevnyf39ptXI91Gku7BpspYaWUN61KJ0Baze9r52lwFf8wAbMo8U_PQpGdHHS8GHH_3Yul';

    return Container(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: AppColors.lightGreyBackground,
                  child: const Icon(Icons.school_outlined, size: 40, color: AppColors.textSecondary),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              course.name,
              style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lexend'),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              course.subject.name,
              style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Lexend'),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildViewAllButton(BuildContext context, AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AllCoursesScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.lightGreyBackground,
            foregroundColor: AppColors.textPrimary,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            minimumSize: const Size(84, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 0,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            l10n.viewAllNewCourses,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lexend',
              letterSpacing: 0.015 * 14,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
