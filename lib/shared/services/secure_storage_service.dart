

// import 'model/storage_service_model.dart';

// abstract class SecureStorageServiceProtocol {
//   Future<void> remove();
//   Future<void> save({required SecureService name, required String token});
//   Future<String?> fetch(SecureService name);
// }

// class SecureStorageService implements SecureStorageServiceProtocol {
//   final _storage = const FlutterSecureStorage();

//   IOSOptions _getIOSOptions() => const IOSOptions(
//         accountName: AppString.anchorSecurityStorage,
//       );

//   AndroidOptions _getAndroidOptions() => const AndroidOptions(
//         encryptedSharedPreferences: true,
//       );

//   @override
//   Future<String?> fetch(SecureService name) async {
//     final token = await _storage.read(
//         key: name.toString().toUpperCase(),
//         iOptions: _getIOSOptions(),
//         aOptions: _getAndroidOptions());
//     return token;
//   }

//   @override
//   Future<void> remove() async {
//     await _storage.deleteAll(
//         iOptions: _getIOSOptions(), aOptions: _getAndroidOptions());
//   }

//   @override
//   Future<void> save(
//       {required SecureService name, required String token}) async {
//     await _storage.write(
//         key: name.toString().toUpperCase(),
//         value: token,
//         iOptions: _getIOSOptions(),
//         aOptions: _getAndroidOptions());
//   }
// }
