// lib/utils/crypto_utils.dart
import 'package:encrypt/encrypt.dart' as enc;
import 'dart:math'; // For Random
import 'dart:typed_data'; // For Uint8List
import 'dart:convert'; // For base64

class CryptoUtils {
  // Generates a random 32-byte (256-bit) key for AES-256
  static enc.Key generateRandomKey() {
    final random = Random.secure();
    // Generate 32 random bytes
    final keyBytes = List<int>.generate(32, (i) => random.nextInt(256));
    return enc.Key(Uint8List.fromList(keyBytes));
  }

  // Generates a random 16-byte (128-bit) IV for AES CBC
  static enc.IV generateRandomIV() {
    final random = Random.secure();
    // Generate 16 random bytes
    final ivBytes = List<int>.generate(16, (i) => random.nextInt(256));
    return enc.IV(Uint8List.fromList(ivBytes));
  }

  // --- For this example, let's generate them once and print them ---
  // --- so we can "hardcode" these generated values for the demo ---
  static void printNewKeyAndIV() {
    final newKey = generateRandomKey();
    final newIV = generateRandomIV();

    print("--- Generated Values (for Demo) ---");
    print("DEMO_KEY_BASE64: ${newKey.base64}");
    print("DEMO_IV_BASE64: ${newIV.base64}");
    print("------------------------------------");
    print("Copy these Base64 values to use as 'hardcoded' values in the example.");
  }
}

// To generate a new key/IV pair to use in the example:
// You can run this file directly using: dart lib/utils/crypto_utils.dart
void main() {
  CryptoUtils.printNewKeyAndIV();
}
