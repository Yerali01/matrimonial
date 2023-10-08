import 'package:anm_app/all_over_again/profile/account_page_controller.dart';
import 'package:anm_app/all_over_again/provider/appwrite_provider.dart';
import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:get/get.dart';

class AccountPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AccountPageController>(
      AccountPageController(
        AuthRepository(
          AppWriteProvider(),
        ),
      ),
    );
  }
}
