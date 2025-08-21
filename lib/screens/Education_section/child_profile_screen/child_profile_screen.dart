import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/models/child_profile_model.dart'; // Ensure this model exists and is correct
import 'package:flutter_lucide/flutter_lucide.dart'; // For icons
import '../../../cubits/education/child_profile/child_profile_cubit.dart';


import 'tabs/courses_tab_screen.dart';
import 'tabs/academic_progress_tab_screen.dart';
import 'tabs/financial_statement_tab_screen.dart';

class ChildProfileScreen extends StatefulWidget {
  final String childId;
  const ChildProfileScreen({super.key, required this.childId});

  @override
  State<ChildProfileScreen> createState() => _ChildProfileScreenState();
}

class _ChildProfileScreenState extends State<ChildProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _headerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    // Fetch child profile data when the screen initializes
    context.read<ChildProfileCubit>().fetchChildProfile(widget.childId);
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final cubit = context.read<ChildProfileCubit>();
    // Get the height of the header section. Use the expandedHeight for calculation.
    final headerHeight = 340.0; // Directly use expandedHeight from SliverAppBar

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

          return DefaultTabController(
            length: 3,
            child: NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                    sliver: SliverAppBar(
                      backgroundColor: AppColors.background,
                      elevation: innerBoxIsScrolled ? 1.0 : 0.0,
                      pinned: true,
                      // MODIFIED: Increased expandedHeight to fit the taller TabBar
                      expandedHeight: 364.0,
                      forceElevated: innerBoxIsScrolled,
                      // ... (leading and title are the same)
                      centerTitle: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: _buildHeader(profile, context, cubit, languageCode, l10n),
                      ),
                      // MODIFIED: Wrapped TabBar in a PreferredSize to increase its height
                      bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(72.0), // Increased height for 2 lines
                        child: TabBar(
                          controller: _tabController,
                          labelColor: AppColors.primary500,
                          unselectedLabelColor: AppColors.textSecondary,
                          indicatorColor: AppColors.textPrimary,
                          indicatorWeight: 3.0,
                          labelStyle: const TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          unselectedLabelStyle: const TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                          tabs: [
                            Tab(child: Text(l10n.coursesTab, textAlign: TextAlign.center)),
                            Tab(child: Text(l10n.academicProgressTab, textAlign: TextAlign.center)),
                            Tab(child: Text(l10n.financialStatementTab, textAlign: TextAlign.center)),
                          ],
                        ),
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

  Widget _buildHeader(ChildProfile profile, BuildContext context, ChildProfileCubit cubit, String languageCode, AppLocalizations l10n) {
    return Padding( // Removed SafeArea
      key: _headerKey,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0), // Simplified padding
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(profile.avatarUrl.isNotEmpty ? profile.avatarUrl : 'https://via.placeholder.com/150'), // Provide a fallback
              backgroundColor: AppColors.gray200,
            ),
            const SizedBox(height: 16), // Increased space after avatar
            Text(
              cubit.getLocalizedText(profile.name, languageCode),
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontFamily: 'Lexend',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8), // Adjusted space after name
            Text(
              // Assuming studentId is a simple string, not localized map
              "${l10n.studentIdLabel}: ${profile.studentId}",
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontFamily: 'Lexend',
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ],
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
