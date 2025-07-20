// lib/cubits/my_requests/my_requests_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:charity/models/request_model.dart'; // Adjust import path as needed
import 'package:intl/intl.dart'; // For date formatting if needed, though HTML uses pre-formatted dates

part 'my_requests_state.dart';

class MyRequestsCubit extends Cubit<MyRequestsState> {
  MyRequestsCubit() : super(MyRequestsInitial())
  {
    // Optionally, load some initial dummy data if needed when the Cubit is created
    // _loadInitialRequests();
  }
  // Internal list to hold the requests
  final List<RequestModel> _localRequests = [];

  // Future<void> fetchMyRequests() async {
  //   emit(MyRequestsLoading());
  //   try {
  //     // --- TODO: Implement your API Call or Data Fetching Logic Here ---
  //     // String? token = await CacheNetwork.getCacheData(key: 'token');
  //     // if (token == null) {
  //     //   emit(MyRequestsError(message: "User not authenticated."));
  //     //   return;
  //     // }
  //
  //     // Example: Fetching from a simulated API service
  //     // final response = await ApiService.instance.get('/api/my-requests', token: token);
  //     // if (response.isSuccess && response.data is List) {
  //     //   List<RequestModel> fetchedRequests = (response.data as List)
  //     //       .map((item) => RequestModel.fromJson(item)) // Assuming fromJson factory
  //     //       .toList();
  //
  //     // IMPORTANT: Sort requests, typically by date descending (newest first)
  //     //   fetchedRequests.sort((a, b) => b.date.compareTo(a.date));
  //
  //     //   _myRequests = fetchedRequests; // Update internal list if you use one
  //     //   emit(MyRequestsLoaded(requests: List.unmodifiable(_myRequests)));
  //     // } else {
  //     //   emit(MyRequestsError(message: response.message ?? "Failed to load requests."));
  //     // }
  //
  //     // --- SIMULATED DATA FOR NOW ---
  //     await Future.delayed(const Duration(milliseconds: 800)); // Simulate network
  //
  //     // Simulate that a new request might have been added by another screen
  //     // For this example, let's just add a new pending request to a static list
  //     // In a real app, your backend would return the updated list.
  //
  //     // This is a placeholder. You should fetch the actual, updated list from your backend.
  //     // If you're managing the list purely client-side after adding a new request
  //     // (which is less common for persistent data), you'd need a way to
  //     // access that newly added request here or merge lists.
  //     // The most robust way is to always re-fetch from the source of truth (backend).
  //
  //     // Example of what fetched data might look like:
  //     final List<RequestModel> simulatedFetchedRequests = [
  //       // Assume some existing requests
  //       RequestModel(id: '1', title: 'طلب سابق 1', description: 'وصف للطلب السابق 1', date: DateTime.now().subtract(Duration(days: 5)), status: RequestStatus.accepted, statusText: 'مقبول'),
  //       RequestModel(id: '2', title: 'طلب سابق 2', description: 'وصف للطلب السابق 2', date: DateTime.now().subtract(Duration(days: 2)), status: RequestStatus.rejected, statusText: 'مرفوض'),
  //       // Potentially a new pending request would be part of this fetched list
  //       // For instance, if you just added one:
  //       // RequestModel(id: 'new_id_from_backend', title: "طلب مساعدة مالية", description: "وصف السبب...", date: DateTime.now(), status: RequestStatus.pending, statusText: "قيد الإنتظار"),
  //     ];
  //
  //     // Sort by date, newest first
  //     simulatedFetchedRequests.sort((a, b) => b.date.compareTo(a.date));
  //
  //     emit(MyRequestsLoaded(requests: List.unmodifiable(simulatedFetchedRequests)));
  //     // --- END OF SIMULATED DATA ---
  //
  //   } catch (e) {
  //     emit(MyRequestsError(message: "An unexpected error occurred: ${e.toString()}"));
  //   }
  // }

  Future<void> fetchMyRequests() async {
    try {
      emit(MyRequestsLoading());
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 1));

      // Dummy Data based on the HTML structure
      final List<RequestModel> dummyRequests = [
        RequestModel(
          id: '1',
          title: 'سلة غذائية',
          description: 'وصف الطلب: سلة غذائية تحتوي على مواد أساسية مثل الأرز والسكر والزيت.',
          // The HTML provides pre-formatted dates, so we'll parse them.
          // For simplicity, I'll use the provided string directly for display
          // and create DateTime objects that might not exactly match the display string
          // if you were to reformat them.
          date: DateTime(2024, 5, 23), // Actual DateTime object
          status: RequestStatus.accepted,
          statusText: 'تمت الموافقة',
        ),
        RequestModel(
          id: '2',
          title: 'مساعدة مالية',
          description: 'وصف الطلب: طلب مساعدة مالية لتغطية مصاريف الإيجار.',
          date: DateTime(2024, 5, 15),
          status: RequestStatus.pending,
          statusText: 'قيد المراجعة',
        ),
        RequestModel(
          id: '3',
          title: 'كسوة العيد',
          description: 'وصف الطلب: طلب ملابس جديدة للأطفال بمناسبة عيد الفطر.',
          date: DateTime(2024, 4, 5),
          status: RequestStatus.rejected,
          statusText: 'تم الرفض',
        ),
        // Add more dummy requests if needed
        RequestModel(
          id: '4',
          title: 'دواء طبي',
          description: 'وصف الطلب: طلب دواء لعلاج مرض السكري.',
          date: DateTime(2024, 3, 10),
          status: RequestStatus.accepted,
          statusText: 'تمت الموافقة',
        ),
      ];
      // Clear existing local requests and add new ones
      _localRequests.clear();
      _localRequests.addAll(dummyRequests);

      emit(MyRequestsLoaded(dummyRequests));
    } catch (e) {
      emit(MyRequestsError('Failed to load requests: ${e.toString()}'));
    }
  }
  // New method to add a request to the local list
  void addNewRequestLocally(RequestModel newRequest) {
    print("MyRequestsCubit: addNewRequestLocally called with title: ${newRequest.title}");
    // Add to the beginning of the list to show newest first
    _localRequests.insert(0, newRequest);
    print("MyRequestsCubit: Local list now has ${_localRequests.length} requests.");

    // After adding, you can directly emit the updated list
    // or rely on the subsequent call to fetchMyRequests()
    // For immediate update after local add, do this:
    emit(MyRequestsLoaded(List.from(_localRequests)));
    print("MyRequestsCubit: Emitted MyRequestsLoaded immediately after local add.");
  }

  // Helper to get pre-formatted date strings as in HTML for direct display
  // Or, you can format the DateTime object in the UI using intl package
  String getFormattedDate(DateTime date, String localeName) {
    if (localeName == 'ar') {
      // This is a simplified mapping based on your HTML.
      // For robust date formatting, use the intl package.
      final day = date.day;
      final year = date.year;
      final monthNamesAr = [
        '', 'يناير', 'فبراير', 'مارس', 'أبريل', 'مايو', 'يونيو',
        'يوليو', 'أغسطس', 'سبتمبر', 'أكتوبر', 'نوفمبر', 'ديسمبر'
      ];
      return '$day ${monthNamesAr[date.month]} $year';
    } else {
      return DateFormat('d MMMM yyyy').format(date); // Example for English
    }
  }
}
