import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/child_model.dart';

part 'home_screen_education_state.dart';
class HomeScreenEducationCubit extends Cubit<HomeScreenState> {
  HomeScreenEducationCubit() : super(HomeScreenInitial());

  Future<void> loadHomeScreenData() async {
    try {
      emit(HomeScreenLoading());
      // Simulate API call
      await Future.delayed(const Duration(milliseconds: 500));

      // Hardcoded data based on HTML
      final userName = "Sophia"; // This would likely come from auth state

      final children = [
        ChildModel(
          id: '1',
          name: "Ethan",
          age: 8,
          imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuCP-H2t-4gRAT_hI_QlN643afsofEKi5vZI0acupQIeMrV2eaYhfUiU7jC5xRCZEFAih_YmGsBqgHu0joDbnuChFf-hXcQX7B6MOBfDJixqz28gM5R4r6t_oxws0MnxNUlDKoXEwyUV9klEVeIpGOqccTdI0s5qKtsSsiorZAcCMq3RbzAadH_Ddh0Fe5-dIbS-Q7Upzo-_Rgzwz3H4ni-E_boGGZKqHBnD7QZ2RhuIrTYIyh6lEHkhiDW3SPwumvQqhwTMJQUCLea6",
          courseCount: 3,
          balance: 250.00,
        ),
        ChildModel(
          id: '2',
          name: "Olivia",
          age: 10,
          imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuBs7lUUoyQRyS3islQErlKBRuPR5Ip4GNkdcuxTrJwt91YAPcdci-YInnbVltEGx3kMWsl6cg4DcK3AEeX0AaW--2nDGuYZkicHFsyz4w8fjLUmHmb3gMY9KCSQzWufNX5S81HgL5Tuucft30DcuaAxzy6IDy0ireQcnrIzdM_xRXKLLQt1yKhoL8QWHyuJ2EnNKsI5FUhDV8R3kKLiu7eBkVW5E20h76_4g-D7lkvSJ-BsxtL3SCXYXaPcEhMj5i9G7rsTsPeWGzdQ",
          courseCount: 4,
          balance: 180.00,
        ),
      ];

      final newCourses = [
        CourseModel(
          id: 'c1',
          title: "Math for Beginners",
          ageRange: "7-9",
          imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuA2PpdnhMXwtHUEeQ1DMQo4slYy7GlB_vJ-ZESzm38W2ITCIdz69cNcNt9TRzgODSTAz7p8b8hFRLmeTRWR-MFwALkcZVU8JYcYfQd7pQs-ooTQBsqvXsRokk7OM4_smL8n01CXHetfIKIfHZne1wkXXHkRzXjB4P3MA7mJbdjc9IXXMzAbVVjdukBitlzitpcz-UNwwlOevnyf39ptXI91Gku7BpspYaWUN61KJ0Baze9r52lwFf8wAbMo8U_PQpGdHHS8GHH_3Yul",
        ),
        CourseModel(
          id: 'c2',
          title: "Science Explorers",
          ageRange: "9-11",
          imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuCoShUuZUY0rVIVDKVBXLfYmFoIpeovHmrXtjH9CbMCTleYzP8BJtCAcSQAPQw49NlQUKNfkIUJI2hqY8IePUje0yJiLkT5YUfzNCSaq2Eh3bSFsrCCfls3xkedOSwR0wtMDYTQ_WlLF7Qj63Dz0-srVlwZUG910w3UTb8R3VxRKTdn_9QVLcfJ0F1RxCL_-wJ7H80LAwCQAVZC8aN9-2Tfivhsuvry7pwHTuSay94P_-uxYiwsSfqo6zrz5jHcRgQrAZtuiKvLZsed",
        ),
      ];

      emit(HomeScreenLoaded(userName: userName, children: children, newCourses: newCourses));
    } catch (e) {
      emit(HomeScreenError(e.toString()));
    }
  }
}