import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:charity/models/course_detail_model.dart'; // Ensure this path is correct

part 'all_courses_state.dart';

class AllCoursesCubit extends Cubit<AllCoursesState> {
  AllCoursesCubit() : super(AllCoursesInitial()) {
    fetchAllCourses();
  }

  // Replace with your actual data fetching logic (e.g., API call)
  Future<void> fetchAllCourses() async {
    emit(AllCoursesLoading());
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 1));

      // Dummy data - replace with actual data source
      final List<CourseDetailModel> courses = [
        CourseDetailModel(
          id: '1',
          title: 'courseMathExplorersTitle', // Key for localization
          subtitle: 'courseMathExplorersSubtitle', // Key for localization
          imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuAtYnPOeZgkSMMdHY-RxDvlPGLgrRZZhL1SK1sJ7q37_iusFNuKA59uRoeJQsFog3b3Dm73hsl7MZmMhDy8AKjeK_FLUSpbsLInxQB2NEducA4huO-lWjVw8zYFex_j0NIl80_p8q3uq4Ewj494D-9sutlbdN1UR7WVLXymXMzSKiLM_sCApDMu2wCKhNw0wya9QsIkRgPTY0LgTQYMiaEr3A3XyYKHlC6z0jUaBmzfN7yGr3DAGoNa86XZyMzL_fV9SErEMMlDwCaj',
        ),
        CourseDetailModel(
          id: '2',
          title: 'courseCreativeWritingTitle', // Key for localization
          subtitle: 'courseCreativeWritingSubtitle', // Key for localization
          imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuAjERWrIHmCGQn19GTAOkzXGJt-wlS-UPD8VbGGJ6Tg9XfU8L6kpGFKs1gH6WNnA7J3-zzbqbvdGvxMK38Pa-15VtqAyyEt6Smh38f5GibnMAS1M3gy-abHmySaRdtcA6oVTb0bAAdJiGUvjG4jTyLGUj1YzQI9oYla4fWTrt4kqak4Sq5kgWdfyw0EPP9xaVF-I6BDKf5zf7gzqDK4KGC2hdDhjFEEeHqNX8Knym0_Q8NsUxyeBjBC9Tw4GivqVp7bkEwoqEeH87FO',
        ),
        CourseDetailModel(
          id: '3',
          title: 'courseScienceAdventuresTitle', // Key for localization
          subtitle: 'courseScienceAdventuresSubtitle', // Key for localization
          imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuAChiy0Dux220SjQ_MguXojAfDSfASXK2AV8l5bdU88QndA23Ai1SuO9h2ESGAhFmVwTBFo8bAGtxTFtt-zfqn4ZXWFhcpyPFl7vjLhXJ18DmoEbs9FsLu2GOlN-JrqNgdmJ811qjIPAf6dwSuyWUkAZiZ8jh-hd-PLh77_Qju73QwsXugQzpzgb5USKpRHmOTJrqMOORIrW-UIhpHgJXGKs4xh_-MjgJul2Cdu9msiAIJ19jGZU4n_67CCTt5ppp15h5wKk9pfpHw-',
        ),
        CourseDetailModel(
          id: '4',
          title: 'courseArtDesignTitle', // Key for localization
          subtitle: 'courseArtDesignSubtitle', // Key for localization
          imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuDF8Q6Zn6uGkt85l85WitoIibPzAuUvIG_lqaSdl-irkr74pulTOnN7qvFxGqGT_QbJxi2o4jRk6D6q3qkuWZYbI_ZTgnRXEa2h5vaA_omDB9IuquhGGTjxpVZfGTrgTKIhD-ohUhzsKDDmZpGKA74C3d-muMB_MAZsyf0X4D0ujcmF-1IXI__qWCA5AYlEcyZvX721tyAxefxVxeaCUOgPSrRPvFJSq594jB1OhFckU6EIBmbUfpstXwtxGR71BCq9BDMNPJRENDKg',
        ),
      ];
      emit(AllCoursesLoaded(courses));
    } catch (e) {
      emit(AllCoursesError("Failed to load courses: ${e.toString()}"));
    }
  }

  Future<void> requestSubscription(String courseId) async {
    final currentState = state;
    if (currentState is AllCoursesLoaded) {
      emit(CourseSubscriptionLoading(courseId));
      try {
        // Simulate API call
        await Future.delayed(const Duration(seconds: 1));

        // Update the specific course's subscription status locally
        final updatedCourses = currentState.courses.map((course) {
          if (course.id == courseId) {
            return course.copyWith(isSubscribed: true);
          }
          return course;
        }).toList();

        emit(AllCoursesLoaded(updatedCourses)); // Emit loaded state first
        emit(CourseSubscriptionSuccess(courseId)); // Then emit success for UI feedback
      } catch (e) {
        emit(AllCoursesLoaded(currentState.courses)); // Revert to previous loaded state
        emit(CourseSubscriptionError(courseId, "Failed to subscribe: ${e.toString()}"));
      }
    }
  }
}
