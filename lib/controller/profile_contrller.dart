import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:zoualfkar/model/doctor.dart';

class ProfileController extends GetxController {

  final selectedTap=0.obs;
  Doctor? doctor;


  @override
  void onInit() async {
    super.onInit();
    doctor= Get.arguments;
  }

}