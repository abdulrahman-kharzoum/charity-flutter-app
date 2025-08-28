// lib/models/common_item_details_model.dart
import 'package:flutter/material.dart'; // For IconData
import 'package:charity/models/request_model.dart'; // For RequestStatus

enum ItemType { request, aid }

class CommonItemDetailsModel {
  final String id; // Unique identifier for the item
  final String title;
  final String description;
  final String statusText;
  final Color statusColor;
  final IconData statusIcon;
  final RequestStatus status; // Added for QR generation logic
  final String dateFormatted;
  final String encryptedQRCodeData; // This will hold the string from the backend for QR
  final ItemType itemType; // To know if it's a request or aid
  final String? requestType; // Added to differentiate between request types (e.g., 'instantAid', 'prescription')

  // Optional fields if they exist and are common
  final String? providerName; // e.g., for aids
  final String? category;

  CommonItemDetailsModel({
    required this.id,
    required this.title,
    required this.description,
    required this.statusText,
    required this.statusColor,
    required this.statusIcon,
    required this.status, // Added for QR generation logic
    required this.dateFormatted,
    required this.encryptedQRCodeData,
    required this.itemType,
    this.providerName,
    this.category,
    this.requestType,
  });
}
