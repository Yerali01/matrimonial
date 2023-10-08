import 'package:anm_app/all_over_again/models/user_model.dart';
import 'package:anm_app/all_over_again/provider/appwrite_constants.dart';
import 'package:anm_app/all_over_again/provider/appwrite_provider.dart';
import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:anm_app/all_over_again/routes/app_pages.dart';
import 'package:appwrite/appwrite.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class MainScreenController extends GetxController with StateMixin<List<User>> {
  AuthRepository authRepository;
  MainScreenController(this.authRepository);

  final GetStorage _getStorage = GetStorage();

  late List<dynamic> userList = [];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    getUser();
  }

  @override
  void onClose() {
    super.onClose();
  }

  moveToCreateForm() {
    Get.toNamed(Routes.form);
  }

  getUser() async {
    try {
      change(null, status: RxStatus.loading());
      final value = await authRepository.getUsers();
      final data = value.toMap();
      final documents = data["documents"].toList();
      userList = documents
          .map(
            (e) => User.fromMap(e["data"]),
          )
          .toList();
      change(userList.cast<User>(), status: RxStatus.success());
    } catch (error) {
      if (error is AppwriteException) {
        change(null, status: RxStatus.error(error.response["message"]));
      } else {
        change(null, status: RxStatus.error("Something went wrong"));
        print(error);
      }
    }
  }
}

// class SelectedListController extends GetxController {
//   var _selectedList = List<String>.empty(growable: true).obs;
//   getSelectedList() => _selectedList;
//   setSelectedList(List<String> list) => _selectedList.value = list;
// }
