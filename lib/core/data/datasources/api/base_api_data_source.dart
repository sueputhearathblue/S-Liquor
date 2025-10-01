import 'package:image_picker/image_picker.dart';

abstract class BaseApiDataSource {
  // Future<Map<String, dynamic>> processUpload({Map<String, dynamic>? data});

  Future<void> updateProfileUer(
      {required Map<String, dynamic> data, required XFile? imagePath});
}
