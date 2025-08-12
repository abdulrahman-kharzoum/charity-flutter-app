import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart'; // You'll need to add this dependency
import 'package:charity/models/common_item_details_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart'; // For AppColors if needed

class ItemDetailsScreen extends StatelessWidget {
  final CommonItemDetailsModel itemDetails;

  const ItemDetailsScreen({super.key, required this.itemDetails});

  // Placeholder for symmetric decryption - THIS IS A CRITICAL SECURITY PART
  // In a real app, this key management and decryption logic would be robust.
  // DO NOT hardcode keys in production. Fetch securely or derive.
  String _decryptData(String encryptedData) {
    // For demonstration, let's assume it's simple Base64 encoded for now
    // In reality, this would involve a proper symmetric decryption algorithm
    // using a shared secret key (e.g., AES).
    //
    // IMPORTANT: This is NOT secure for production.
    // You need a proper cryptographic library and secure key management.
    // Example: using 'encrypt' package (add to pubspec.yaml)
    //
    // import 'package:encrypt/encrypt.dart' as enc;
    //
    // final keyString = "your-32-byte-secret-key-string"; // MUST BE SECURELY MANAGED
    // final ivString = "your-16-byte-iv-string";      // MUST BE SECURELY MANAGED
    //
    // try {
    //   final key = enc.Key.fromUtf8(keyString);
    //   final iv = enc.IV.fromUtf8(ivString);
    //   final encrypter = enc.Encrypter(enc.AES(key, mode: enc.AESMode.cbc));
    //   final decrypted = encrypter.decrypt64(encryptedData, iv: iv);
    //   return decrypted;
    // } catch (e) {
    //   print("Decryption error: $e");
    //   return "Error Decrypting"; // Handle error appropriately
    // }
    print("Warning: Using placeholder decryption for QR code data.");
    return encryptedData; // Placeholder: Pass through if no decryption for now
  }


  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final String qrDataToDisplay = _decryptData(itemDetails.encryptedQRCodeData);

    return Scaffold(
      appBar: AppBar(
        title: Text(itemDetails.itemType == ItemType.request
            ? l10n.requestDetailsTitle
            : l10n.aidDetailsTitle),
        backgroundColor: AppColors.white,
        elevation: 1.0,
        iconTheme: IconThemeData(color: AppColors.myRequestsBackButton),
        titleTextStyle: TextStyle(
            fontFamily: 'Lexend',
            color: AppColors.myRequestsTitleText,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Centered QR Code
            Center(
              child: QrImageView(
                data: qrDataToDisplay, // The decrypted data
                version: QrVersions.auto,
                size: 250.0,
                gapless: false,
                // You can add an embedded image to the QR code if desired
                // embeddedImage: AssetImage('assets/images/logo.png'),
                // embeddedImageStyle: QrEmbeddedImageStyle(
                //   size: Size(80, 80),
                // ),
                errorStateBuilder: (cxt, err) {
                  return Center(
                    child: Text(
                      l10n.qrError,
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),

            // Item Title
            Text(
              itemDetails.title,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lexend',
                  color: AppColors.myRequestsTitleText),
            ),
            const SizedBox(height: 8),

            // Item Status
            Row(
              children: [
                Icon(itemDetails.statusIcon, color: itemDetails.statusColor, size: 20),
                const SizedBox(width: 8),
                Text(
                  itemDetails.statusText,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lexend',
                      color: itemDetails.statusColor),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Date
            Text(
              "${l10n.dateLabel}: ${itemDetails.dateFormatted}",
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Lexend',
                  color: AppColors.myRequestsDateText),
            ),
            const SizedBox(height: 16),

            // Description
            Text(
              l10n.descriptionLabel,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lexend',
                  color: AppColors.myRequestsTitleText.withOpacity(0.8)),
            ),
            const SizedBox(height: 4),
            Text(
              itemDetails.description,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Lexend',
                  color: AppColors.myRequestsDescriptionText,
                  height: 1.4),
            ),

            // // Optional Provider Info (for Aids)
            // if (itemDetails.itemType == ItemType.aid && itemDetails.providerName != null && itemDetails.providerName!.isNotEmpty) ...[
            //   const SizedBox(height: 16),
            //   Text(
            //     "${l10n.providedByLabel}: ${itemDetails.providerName}",
            //     style: TextStyle(
            //         fontSize: 14,
            //         fontFamily: 'Lexend',
            //         color: AppColors.myRequestsDescriptionText.withOpacity(0.9)),
            //   ),
            // ],

            // Add more details as needed based on CommonItemDetailsModel
          ],
        ),
      ),
    );
  }
}
