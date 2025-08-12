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
          id: 'aid101', // المعرف
          title: 'سلة غذائية - حملة رمضان', // العنوان
          description: 'تحتوي على مواد غذائية أساسية مثل الأرز والسكر والزيت والتمر والعدس للعائلات.', // الوصف
          date: DateTime(2024, 4, 5),
          status: AidStatus.readyForPickup, // الحالة: جاهز
          statusText: 'جاهزة للاستلام', // نص الحالة: جاهزة للاستلام
          providedBy: 'منظمة خيرية عالمية', // مقدمة من
        ),
        AidModel(
          id: 'aid102', // المعرف
          title: 'حملة ملابس الشتاء - قسائم', // العنوان
          description: 'قسائم لشراء ملابس دافئة للأطفال والكبار.', // الوصف
          date: DateTime(2023, 12, 15),
          status:AidStatus.received, // الحالة: جاهز (ولكن تم التوزيع)
          statusText: 'تم التوزيع', // نص الحالة: تم التوزيع
          providedBy: 'دعم المجتمع المحلي', // مقدمة من
        ),
        AidModel(
          id: 'aid103', // المعرف
          title: 'مجموعة اللوازم المدرسية', // العنوان
          description: 'في انتظار العدد النهائي للمستفيدين قبل التوزيع.', // الوصف
          date: DateTime(2024, 8, 1), // Future date, so 'waiting'
          status: AidStatus.waiting, // الحالة: في الانتظار
          statusText: 'في انتظار التأكيد', // نص الحالة: في انتظار التأكيد
          providedBy: 'مؤسسة التعليم للجميع', // مقدمة من
        ),
        AidModel(
          id: 'aid104', // المعرف
          title: 'طلب مساعدة طبية طارئة', // العنوان
          description: 'لم يستوف الطلب معايير الأهلية للعلاج المتخصص.', // الوصف
          date: DateTime(2024, 3, 20),
          status: AidStatus.rejected, // الحالة: مرفوض
          statusText: 'غير مؤهل', // نص الحالة: غير مؤهل
          providedBy: 'برنامج المساعدة الصحية', // مقدمة من
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

