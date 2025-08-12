import 'package:flutter/material.dart';

enum AidStatus {readyForPickup,received, waiting, rejected }


class AidModel {
  final String id;
  final String title;
  final String description;
  final DateTime date;
  final AidStatus status;
  final String statusText;
  final String providedBy;
  final String? encryptedQrDataField;

  AidModel({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.status,
    required this.statusText,
    this.encryptedQrDataField,
    required this.providedBy,
  });

factory AidModel.fromJson(Map<String, dynamic> json) {
  return AidModel(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    date: DateTime.parse(json['date']),
    status: _parseStatus(json['status']),
    statusText: json['statusText'],
    providedBy: json['providedBy'],
  );
}

static AidStatus _parseStatus(String status) {
  // Implement parsing logic based on your API response
  if (status.toLowerCase() == 'ready for pickup' || status.toLowerCase() == 'ready') return AidStatus.readyForPickup;
  if (status.toLowerCase() == 'received' || status.toLowerCase() == 'ready') return AidStatus.received;
  if (status.toLowerCase() == 'pending' || status.toLowerCase() == 'waiting') return AidStatus.waiting;
  if (status.toLowerCase() == 'rejected') return AidStatus.rejected;
  return AidStatus.rejected;
}
}

