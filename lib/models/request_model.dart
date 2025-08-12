enum RequestStatus {
  received,
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
  final String statusText;
  final String? encryptedQrDataField;

  RequestModel({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.status,
    required this.statusText,
    this.encryptedQrDataField,
  });

}