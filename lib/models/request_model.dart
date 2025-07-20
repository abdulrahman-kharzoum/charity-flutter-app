enum RequestStatus {
  accepted,
  pending,
  rejected,
}

class RequestModel {
  final String id;
  final String title;
  final String description;
  final DateTime date;
  final RequestStatus status;
  final String statusText; // To match "تمت الموافقة", "قيد المراجعة", "تم الرفض"

  RequestModel({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.status,
    required this.statusText,
  });
}