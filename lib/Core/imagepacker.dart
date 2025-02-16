import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class ImagePickerHelper {
  final ImagePicker _imagePicker = ImagePicker();

  Future<File?> pickImageFromGallery() async {
    try {
      final pickedFile =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        return File(pickedFile.path);
      }
    } catch (e) {
      print("Error picking image from gallery: $e");
    }
    return null;
  }

  Future<File?> captureImageFromCamera() async {
    try {
      final pickedFile =
          await _imagePicker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        return File(pickedFile.path);
      }
    } catch (e) {
      print("Error capturing image from camera: $e");
    }
    return null;
  }

  Future<String?> saveImageToStorage(File imageFile) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final fileName = basename(imageFile.path);
      final savedImage = await imageFile.copy('${directory.path}/$fileName');

      return savedImage.path;
    } catch (e) {
      print("Error saving image: $e");
      return null;
    }
  }
}
