import 'package:flutter/foundation.dart' show immutable;

@immutable
class FinancialSummary {
  final Map<String, String> amountDue; // Using map for currency and value if needed, or just String for amount
  final Map<String, String> amountPaid;

  const FinancialSummary({required this.amountDue, required this.amountPaid});
}

@immutable
class PaymentHistoryItem {
  final Map<String, String> description;
  final Map<String, String> date;
  final Map<String, String> amount;

  const PaymentHistoryItem({required this.description, required this.date, required this.amount});
}

@immutable
class FinancialRecord {
  final FinancialSummary summary;
  final List<PaymentHistoryItem> paymentHistory;

  const FinancialRecord({
    required this.summary,
    required this.paymentHistory,
  });

  static FinancialRecord get dummyFinancialRecord => FinancialRecord(
    summary: const FinancialSummary(
      amountDue: {'en': '\$2,500', 'ar': '٢٥٠٠ دولار'},
      amountPaid: {'en': '\$7,500', 'ar': '٧٥٠٠ دولار'},
    ),
    paymentHistory: const [
      PaymentHistoryItem(
        description: {'en': 'Payment Received', 'ar': 'تم استلام الدفعة'},
        date: {'en': 'July 15, 2024', 'ar': '١٥ يوليو ٢٠٢٤'},
        amount: {'en': '\$1,500', 'ar': '١٥٠٠ دولار'},
      ),
      PaymentHistoryItem(
        description: {'en': 'Payment Received', 'ar': 'تم استلام الدفعة'},
        date: {'en': 'June 15, 2024', 'ar': '١٥ يونيو ٢٠٢٤'},
        amount: {'en': '\$2,000', 'ar': '٢٠٠٠ دولار'},
      ),
      PaymentHistoryItem(
        description: {'en': 'Payment Received', 'ar': 'تم استلام الدفعة'},
        date: {'en': 'May 15, 2024', 'ar': '١٥ مايو ٢٠٢٤'},
        amount: {'en': '\$2,000', 'ar': '٢٠٠٠ دولار'},
      ),
      PaymentHistoryItem(
        description: {'en': 'Payment Received', 'ar': 'تم استلام الدفعة'},
        date: {'en': 'April 15, 2024', 'ar': '١٥ أبريل ٢٠٢٤'},
        amount: {'en': '\$2,000', 'ar': '٢٠٠٠ دولار'},
      ),
    ],
  );
}

