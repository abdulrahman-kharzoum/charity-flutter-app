import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/models/child_model.dart';

import 'package:charity/theme/color.dart';

import '../../../cubits/education/home_screen_education_cubit/home_screen_education_cubit.dart';

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

    context.read<HomeScreenEducationCubit>().loadHomeScreenData();
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

    // final currentTheme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColors.white, // From HTML bg-white
      body: BlocBuilder<HomeScreenEducationCubit, HomeScreenState>(
        builder: (context, state) {
          if (state is HomeScreenLoading || state is HomeScreenInitial) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is HomeScreenError) {
            return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Error: ${state.message}', textAlign: TextAlign.center),
                ));
          }
          if (state is HomeScreenLoaded) {
            return Column( // Use Column to manage AppBar and the rest of the content
              children: [
                _buildAppBar(context, l10n), // Custom AppBar part of the body
                Expanded(
                  child: ListView( // For the scrollable content
                    padding: EdgeInsets.zero,
                    children: [
                      _buildGreeting(context, l10n, state.userName),
                      _buildSectionTitle(context, l10n.myChildren),
                      _buildHorizontalCardList<ChildModel>(
                        context,
                        l10n,
                        state.children,
                            (child) => _buildChildCard(context, l10n, child),
                      ),
                      _buildSectionTitle(context, l10n.newCourses),
                      _buildHorizontalCardList<CourseModel>(
                        context,
                        l10n,
                        state.newCourses,
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
          return const SizedBox.shrink(); // Fallback for unhandled states
        },
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context, l10n),
    );
  }

  Widget _buildAppBar(BuildContext context, AppLocalizations l10n) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8), // p-4 pb-2
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 48, // flex size-12 shrink-0 items-center
              height: 48,
              child: Align(
                alignment: Alignment.centerLeft, // Default but explicit
                child: CircleAvatar(
                  radius: 16, // size-8 (32px / 2)
                  backgroundColor: AppColors.lightGreyBackground, // Placeholder color
                  backgroundImage: const NetworkImage( //Directly from HTML
                      "https://lh3.googleusercontent.com/aida-public/AB6AXuAxxemeKv1q4vXWk0wQf_5jqYuoNCmXfZzO1Kv1edZtp16AlCIvIf8LNGrCE_nzlasCo6Fv8PWgye59ZCF-UI5UCEzuDnUlSITzXVkz8BHcP-KKF2E-_pjg7yj19gRZWwXU8BX91vPe-37sodJXq8yMmy6lD79zH14SZd-GtG_RVIEGFLYe7UgxZc5-z2RjBrFz_4TTs6hD2ElVTxQzBObKMTxTfLXV4IgWtLPPpk9LtOI9-GNhnUzcIuyFFadWp5StNIb3bnmYQ8lu"),
                  onBackgroundImageError: (_, __) { /* Handle error, e.g. show placeholder */ },
                ),
              ),
            ),
            Text(
              l10n.appName,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontSize: 18, // text-lg
                fontWeight: FontWeight.bold, // font-bold
                fontFamily: 'Lexend',
                letterSpacing: -0.015 * 18, // tracking-[-0.015em]
              ),
            ),
            SizedBox(
              width: 48, // flex w-12 items-center justify-end
              height: 48,
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(Icons.settings_outlined, color: AppColors.textPrimary, size: 24),
                  onPressed: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                  padding: EdgeInsets.zero, // min-w-0 p-0
                  constraints: const BoxConstraints(), // To remove extra padding
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGreeting(BuildContext context, AppLocalizations l10n, String userName) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8), // px-4 pt-5 pb-2
      child: Text(
        l10n.greeting(userName),
        style: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lexend',

        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 12), // px-4 pt-5 pb-3
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
      height: 250,

      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return cardBuilder(items[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 12),
      ),
    );
  }

// In lib/screens/Education_section/home_screen/education_home_screen.dart

// ... inside _EduHomeScreenState class ...

  Widget _buildChildCard(BuildContext context, AppLocalizations l10n, ChildModel child) {
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
                child.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: AppColors.lightGreyBackground,
                  child: const Icon(Icons.person_outline, size: 40, color: AppColors.textSecondary),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12), // ***** SLIGHTLY REDUCED from 16, if needed *****
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
              "${l10n.coursesLabel(child.courseCount)} | ${l10n.balanceLabel(child.balance.toStringAsFixed(0))}",
              style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Lexend'),
              maxLines: 2, // Allow two lines for potentially longer text
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(BuildContext context, AppLocalizations l10n, CourseModel course) {
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
                course.imageUrl,
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
              course.title,
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
              l10n.agesLabel(course.ageRange),
              style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Lexend'),
              maxLines: 1, // This can also be a source of overflow if text is long.
              // Consider `maxLines: 2` and `overflow: TextOverflow.ellipsis` if needed.
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildViewAllButton(BuildContext context, AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0), // px-4 py-3
      child: Align(
        alignment: Alignment.centerLeft, // justify-start
        child: ElevatedButton(
          onPressed: () {
            // TODO: Handle 'View All New Courses' navigation/action
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${l10n.viewAllNewCourses} tapped!')));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.lightGreyBackground, // bg-[#f0f2f5]
            foregroundColor: AppColors.textPrimary, // text-[#111418]
            padding: const EdgeInsets.symmetric(horizontal: 16), // px-4
            minimumSize: const Size(84, 40), // min-w-[84px] h-10
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0), // rounded-xl
            ),
            elevation: 0, // No shadow in HTML example
            tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Keep size tight
          ),
          child: Text(
            l10n.viewAllNewCourses,
            style: TextStyle(
              fontSize: 14, // text-sm
              fontWeight: FontWeight.bold, // font-bold
              fontFamily: 'Lexend',
              letterSpacing: 0.015 * 14, // tracking-[0.015em]
            ),
            overflow: TextOverflow.ellipsis, // truncate (implicit for button text)
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context, AppLocalizations l10n) {
    // Using AppColors directly, or use Theme.of(context).bottomNavigationBarTheme properties
    const selectedColor = AppColors.textPrimary;
    const unselectedColor = AppColors.textSecondary;
    final labelStyle = TextStyle(
        fontSize: 12, // text-xs
        fontWeight: FontWeight.w500, // font-medium
        fontFamily: 'Lexend',
        letterSpacing: 0.015 * 12 // tracking-[0.015em]
    );

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white, // bg-white
        border: Border(
            top: BorderSide(color: AppColors.border, width: 1.0)), // border-t border-[#f0f2f5]
      ),

      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildBottomNavItem(context, l10n.home, Icons.home_filled, 0, selectedColor, unselectedColor, labelStyle),
          _buildBottomNavItem(context, l10n.children, Icons.people_outline, 1, selectedColor, unselectedColor, labelStyle),
          _buildBottomNavItem(context, l10n.courses, Icons.menu_book_outlined, 2, selectedColor, unselectedColor, labelStyle),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(
      BuildContext context, String label, IconData iconData, int index, Color selectedColor, Color unselectedColor, TextStyle labelStyle) {
    final color = _selectedIndex == index ? selectedColor : unselectedColor;
    // Icon weight (fill vs regular)
    final currentIcon = _selectedIndex == index && iconData == Icons.home_filled // Special case for home
        ? Icons.home_filled
        : (_selectedIndex == index ? iconData : _getRegularIcon(iconData));


    return Expanded( // just flex flex-1
      child: InkWell(
        onTap: () => _onItemTapped(index),
        borderRadius: BorderRadius.circular(24), // rounded-full (for ripple effect area)
        child: Column(
          mainAxisSize: MainAxisSize.min, // Crucial for Row layout in BottomNav
          mainAxisAlignment: MainAxisAlignment.end, // HTML justify-end
          children: <Widget>[
            // HTML: flex h-8 items-center justify-center. We'll use a SizedBox for height.
            SizedBox(
              height: 28, // Approximation of HTML h-8
              child: Icon(currentIcon, color: color, size: 24), // data-size="24px"
            ),
            const SizedBox(height: 4), // gap-1
            Text(
              label,
              style: labelStyle.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }

  // Helper to switch to regular icons if not selected (HTML implies this)
  IconData _getRegularIcon(IconData filledIcon) {
    // This is a simple mapping. You might need more complex logic or specific regular icons.
    if (filledIcon == Icons.home_filled) return Icons.home_outlined;
    // Add other mappings if your selected icons are 'filled' versions
    return filledIcon; // Default to the provided one if no 'regular' variant is defined
  }
}

// Optional: If you want to provide HomeScreenCubit specifically for this screen
// and its descendants, you can wrap HomeScreen with a BlocProvider.
// Otherwise, provide it higher in the widget tree (e.g., in main.dart).
class HomeScreenProvider extends StatelessWidget {
  const HomeScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenEducationCubit(), // No need to call loadHomeScreenData here, initState does it
      child: const EduHomeScreen(),
    );
  }
}
