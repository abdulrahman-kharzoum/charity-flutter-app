import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/models/child_profile_model.dart'; // Ensure this model exists and is correct
import 'package:flutter_lucide/flutter_lucide.dart'; // For icons
import '../../../cubits/education/child_profile/child_profile_cubit.dart';

// Import your tab screen files
import 'tabs/courses_tab_screen.dart';
import 'tabs/academic_progress_tab_screen.dart';
import 'tabs/financial_statement_tab_screen.dart';

class ChildProfileScreen extends StatefulWidget {
  final String childId; // Pass the childId to fetch specific data

  const ChildProfileScreen({super.key, required this.childId});

  @override
  State<ChildProfileScreen> createState() => _ChildProfileScreenState();
}

class _ChildProfileScreenState extends State<ChildProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _headerKey = GlobalKey(); // Key for the header widget to get its height

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // 3 tabs now
    // Fetch child profile data when the screen initializes
    context.read<ChildProfileCubit>().fetchChildProfile(widget.childId);
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final cubit = context.read<ChildProfileCubit>();
    // Get the height of the header section
    final headerHeight = _headerKey.currentContext?.size?.height ?? 250.0; // Estimate if not available, matches expandedHeight

    // Show title in AppBar if scrolled past the header (minus toolbar height)
    if (_scrollController.offset > headerHeight - kToolbarHeight) {
      if (!cubit.state.showAppBarTitle) { // Only update if state changes
        cubit.updateAppBarTitleVisibility(true);
      }
    } else {
      if (cubit.state.showAppBarTitle) { // Only update if state changes
        cubit.updateAppBarTitleVisibility(false);
      }
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cubit = context.read<ChildProfileCubit>();
    final languageCode = l10n.localeName;
    final isArabic = languageCode == 'ar';

    return Scaffold(
      backgroundColor: AppColors.background, // e.g., bg-white or a light gray
      body: BlocBuilder<ChildProfileCubit, ChildProfileState>(
        builder: (context, state) {
          if (state.status == ChildProfileStatus.initial ||
              (state.status == ChildProfileStatus.loading && state.profile == null)) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == ChildProfileStatus.failure) {
            return Center(child: Text('Error: ${state.error ?? l10n.errorLabel}', style: const TextStyle(fontFamily: 'Lexend')));
          }
          if (state.profile == null) {
            return Center(child: Text(l10n.noDataAvailable, style: const TextStyle(fontFamily: 'Lexend')));
          }

          final profile = state.profile!;
          final childName = cubit.getLocalizedText(profile.name, languageCode);

          return DefaultTabController( // Not strictly necessary if you manage controller explicitly but good practice
            length: 3,
            child: NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                    sliver: SliverAppBar(
                      backgroundColor: AppColors.background, // Match scaffold background
                      elevation: innerBoxIsScrolled ? 1.0 : 0.0, // Subtle shadow when scrolled
                      pinned: true,
                      expandedHeight: 250.0, // Height of the header when fully expanded
                      forceElevated: innerBoxIsScrolled,
                      leading: IconButton(
                        icon: Icon(
                          isArabic ? LucideIcons.arrow_right : LucideIcons.arrow_left,
                          color: AppColors.textPrimary,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      title: state.showAppBarTitle
                          ? Text(
                        childName,
                        style: const TextStyle(
                          color: AppColors.textPrimary,
                          fontFamily: 'Lexend',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                          : Text( // Default title when not scrolled or child name not shown
                        l10n.childProfileTitle, // Use a generic title
                        style: const TextStyle(
                          color: AppColors.textPrimary,
                          fontFamily: 'Lexend',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      centerTitle: true,
                      flexibleSpace: FlexibleSpaceBar(
                        // Use a key here if you need to calculate its height precisely for scroll effects
                        background: _buildHeader(profile, context, cubit, languageCode, l10n),
                      ),
                      bottom: TabBar(
                        controller: _tabController,
                        labelColor: AppColors.textPrimary, // Color for selected tab text (e.g., your primary text color)
                        unselectedLabelColor: AppColors.textSecondary, // Color for unselected tab text
                        indicatorColor: AppColors.textPrimary, // Color of the indicator line (active tab underline)
                        indicatorWeight: 3.0,
                        labelStyle: const TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 15, // text-[15px]
                          fontWeight: FontWeight.w600, // font-semibold
                        ),
                        unselectedLabelStyle: const TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 15, // text-[15px]
                          fontWeight: FontWeight.normal, // font-normal (or w500 if you prefer)
                        ),
                        tabs: [
                          Tab(text: l10n.coursesTab),         // Make sure these keys exist in your ARB files
                          Tab(text: l10n.academicProgressTab),// e.g., "Courses", "Academic Progress"
                          Tab(text: l10n.financialStatementTab),// "Financial Statement"
                        ],
                        // onTap: (index) => cubit.changeTab(index), // Optional: if you need cubit to track tab changes
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  // Tab 1: Courses
                  _buildTabContent(const CoursesTabScreen()),
                  // Tab 2: Academic Progress
                  _buildTabContent(const AcademicProgressTabScreen()),
                  // Tab 3: Financial Statement
                  _buildTabContent(const FinancialStatementTabScreen()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Helper to build the header section
  Widget _buildHeader(ChildProfile profile, BuildContext context, ChildProfileCubit cubit, String languageCode, AppLocalizations l10n) {
    return SafeArea( // Ensures content is not under status bar when expanded
      child: Padding(
        key: _headerKey, // Assign the key here
        // Adjust top padding to be below the AppBar title space
        padding: const EdgeInsets.only(top: kToolbarHeight + 10, left: 16.0, right: 16.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
          children: <Widget>[
            CircleAvatar(
              radius: 50, // w-24/2 = 12 * 4.16 (approx, Tailwind w-24 is 6rem)
              // The image provided has a larger avatar. Let's make it 50.
              backgroundImage: NetworkImage(profile.avatarUrl.isNotEmpty ? profile.avatarUrl : 'https://via.placeholder.com/150'), // Provide a fallback
              backgroundColor: AppColors.gray200, // Placeholder color
            ),
            const SizedBox(height: 12), // space-y-3 -> 0.75rem
            Text(
              cubit.getLocalizedText(profile.name, languageCode),
              style: const TextStyle(
                color: AppColors.textPrimary, // text-[#111418]
                fontFamily: 'Lexend',
                fontSize: 22, // text-xl from HTML (approx 20-22px)
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 3), // space-y-1 -> 0.25rem
            Text(
              // Assuming studentId is a simple string, not localized map
              "${l10n.studentIdLabel}: ${profile.studentId}",
              style: const TextStyle(
                color: AppColors.textSecondary, // text-[#60748a]
                fontFamily: 'Lexend',
                fontSize: 15, // text-[15px]
              ),
              textAlign: TextAlign.center,
            ),
            // const SizedBox(height: 20), // space-y-1 -> 0.25rem
          ],
        ),
      ),
    );
  }

  // Helper to wrap tab content for NestedScrollView
  Widget _buildTabContent(Widget tabScreen) {
    return Builder(
      builder: (BuildContext context) {
        return CustomScrollView(
          key: PageStorageKey<String>(tabScreen.runtimeType.toString()), // Preserve scroll position
          slivers: <Widget>[
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            SliverFillRemaining(
              child: tabScreen,
            ),
          ],
        );
      },
    );
  }
}
