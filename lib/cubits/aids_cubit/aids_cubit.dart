// lib/cubits/aids_cubit/aids_cubit.dart

import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:charity/models/aid_model.dart';
// Assuming RequestStatus is used for AidModel status. Adjust if you created AidStatus.
import 'package:charity/models/request_model.dart';

part 'aids_state.dart';

class AidsCubit extends Cubit<AidsState> {
  AidsCubit() : super(AidsInitial());

  Future<void> fetchAids() async {
    try {
      emit(AidsLoading());
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 1200)); // Slightly different delay

      // Dummy Data for Aids
      final List<AidModel> dummyAids = [
        AidModel(
          id: 'aid101',
          title: 'Food Basket - Ramadan Campaign',
          description: 'Contains essential food items like rice, sugar, oil, dates, and lentils for families.',
          date: DateTime(2024, 4, 5),
          status: AidStatus.ready,
          statusText: 'Ready for Pickup', // More specific status text
          providedBy: 'Global Charity Org',
        ),
        AidModel(
          id: 'aid102',
          title: 'Winter Clothing Drive - Vouchers',
          description: 'Vouchers for purchasing warm clothes for children and adults.',
          date: DateTime(2023, 12, 15),
          status:AidStatus.ready,
          statusText: 'Distributed',
          providedBy: 'Local Community Support',
        ),
        AidModel(
          id: 'aid103',
          title: 'School Supplies Kit',
          description: 'Awaiting final count of beneficiaries before distribution.',
          date: DateTime(2024, 8, 1), // Future date, so 'waiting'
          status: AidStatus.waiting, // Using 'pending' as 'waiting'
          statusText: 'Waiting Confirmation',
          providedBy: 'Education For All Foundation',
        ),
        AidModel(
          id: 'aid104',
          title: 'Emergency Medical Aid Application',
          description: 'Application did not meet eligibility criteria for specialized treatment.',
          date: DateTime(2024, 3, 20),
          status: AidStatus.rejected,
          statusText: 'Not Eligible',
          providedBy: 'Healthcare Assistance Program',
        ),
      ];

      // Sort by date, newest first (optional, but good for display)
      dummyAids.sort((a, b) => b.date.compareTo(a.date));

      emit(AidsLoaded(dummyAids));
    } catch (e) {
      emit(AidsError('Failed to load aids: ${e.toString()}'));
    }
  }

  String getFormattedDate(DateTime date, String localeName) {

    final day = date.day;
    final year = date.year;

    if (localeName == 'ar') {
      final monthNamesAr = [
        '', 'يناير', 'فبراير', 'مارس', 'أبريل', 'مايو', 'يونيو',
        'يوليو', 'أغسطس', 'سبتمبر', 'أكتوبر', 'نوفمبر', 'ديسمبر'
      ];
      return '$day ${monthNamesAr[date.month]} $year';
    } else {
      // Example for English, you might want a more specific format e.g., DateFormat('d MMMM yyyy', localeName)
      return DateFormat('d MMMM yyyy').format(date);
    }
  }
}

