import 'package:anm_app/all_over_again/profile/account_page_controller.dart';
import 'package:anm_app/all_over_again/provider/auth_repository.dart';
import 'package:anm_app/all_over_again/routes/app_pages.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';

class FormScreenController extends GetxController {
  AuthRepository authRepository;
  FormScreenController(this.authRepository);
  Client client = Client();
  late Databases databases;
  late String uploadedFileIdFirst;
  late String uploadedFileIdSecond;
  late String uploadedFileIdThird;
  late String uploadedFileIdVeerificationFront;
  late String uploadedFileIdVerificationBack;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController anyDisabilityEditingController =
      TextEditingController();
  TextEditingController firstNameEditingController = TextEditingController();
  TextEditingController middleNameEditingController = TextEditingController();
  TextEditingController lastNameEditingController = TextEditingController();
  TextEditingController ageEditingController = TextEditingController();
  TextEditingController birthPlaceEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();

  TextEditingController addressEditingController = TextEditingController();

  TextEditingController buildingEditingController = TextEditingController();
  TextEditingController cityEditingController = TextEditingController();

  TextEditingController zipCodeEditingController = TextEditingController();
  TextEditingController pastorNameEditingController = TextEditingController();

  TextEditingController churchNameEditingController = TextEditingController();
  TextEditingController collegeEditingController = TextEditingController();
  TextEditingController otherCollegeEditingController = TextEditingController();
  TextEditingController denominationEditingController = TextEditingController();
  TextEditingController subCastleEditingController = TextEditingController();
  TextEditingController hobbiesEditingController = TextEditingController();
  TextEditingController aboutMeFavThingsEditingController =
      TextEditingController();

  String profile_type = "Self";
  String salutation = "Mr";
  String gender = "Male";
  String height = '4"0';
  String weight = "30kg";
  String bodyType = "Average";
  String skinTone = "white";
  String bloodGroup = "1";
  String country = "India";
  String state = "Andhra Pradesh";
  String city = "city";
  String education = "High School";
  String occupation = "Not Working";
  String annualIncome = "Less Than 2 Lakhs";
  String maritial_status = "Never Married";
  String no_of_children = "None";
  String mother_tongue = "Assamese";
  String family_values = "Traditional";
  String family_type = "Joint Family";
  String family_income = "Less Than 2 Lakhs";
  String father_status = "Service-Private";
  String mother_status = "Service-Private";
  String no_of_brothers = "None";
  String no_of_sisters = "None";
  String religious_value = "Average Christian";
  String smoke = "No";
  String drink = "No";
  String diet = "Veg";
  String languages_known = "English";
  String email = "";

  bool isFormValid = false;

  final GetStorage _getStorage = GetStorage();

  var imagePathFirst = ''.obs;
  var imagePathSecond = ''.obs;
  var imagePathThird = ''.obs;
  var verificationFrontDocument = ''.obs;
  var verificationBackDocument = ''.obs;
  final ImagePicker _pickerFirst = ImagePicker();
  final ImagePicker _pickerSecond = ImagePicker();
  final ImagePicker _pickerThird = ImagePicker();
  final ImagePicker _pickerVerificationFrontDocument = ImagePicker();
  final ImagePicker _pickerVerificationBackDocument = ImagePicker();

  @override
  void onInit() async {
    super.onInit();
    databases = await Databases(client);
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstNameEditingController.dispose();
    middleNameEditingController.dispose();
    lastNameEditingController.dispose();
    ageEditingController.dispose();
    birthPlaceEditingController.dispose();
    anyDisabilityEditingController.dispose();
    addressEditingController.dispose();
    buildingEditingController.dispose();
    cityEditingController.dispose();
    zipCodeEditingController.dispose();
    pastorNameEditingController.dispose();
    churchNameEditingController.dispose();
    collegeEditingController.dispose();
    otherCollegeEditingController.dispose();
    denominationEditingController.dispose();
    subCastleEditingController.dispose();
    hobbiesEditingController.dispose();
    aboutMeFavThingsEditingController.dispose();
    emailEditingController.dispose();
  }

  void clearTextEditingControllers() {
    firstNameEditingController.clear();
    middleNameEditingController.clear();
    lastNameEditingController.clear();
    ageEditingController.clear();
    birthPlaceEditingController.clear();
    anyDisabilityEditingController.clear();
    addressEditingController.clear();
    buildingEditingController.clear();
    cityEditingController.clear();
    zipCodeEditingController.clear();
    pastorNameEditingController.clear();
    churchNameEditingController.clear();
    collegeEditingController.clear();
    otherCollegeEditingController.clear();
    denominationEditingController.clear();
    subCastleEditingController.clear();
    hobbiesEditingController.clear();
    aboutMeFavThingsEditingController.clear();
    emailEditingController.clear();
  }

  void selectFirstImage() async {
    final XFile? image =
        await _pickerFirst.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePathFirst.value = image.path;
    } else {
      print("IMAGE IS NOT SELECTED");
    }
  }

  void selectSecondImage() async {
    final XFile? image =
        await _pickerSecond.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePathSecond.value = image.path;
    } else {
      print("IMAGE IS NOT SELECTED");
    }
  }

  void selectThirdImage() async {
    final XFile? image =
        await _pickerThird.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePathThird.value = image.path;
    } else {
      print("IMAGE IS NOT SELECTED");
    }
  }

  void selectVerificationFrontDocument() async {
    final XFile? image = await _pickerVerificationFrontDocument.pickImage(
        source: ImageSource.gallery);
    if (image != null) {
      verificationFrontDocument.value = image.path;
    } else {
      print("IMAGE IS NOT SELECTED");
    }
  }

  void selectVerificationBackDocument() async {
    final XFile? image = await _pickerVerificationBackDocument.pickImage(
        source: ImageSource.gallery);
    if (image != null) {
      verificationBackDocument.value = image.path;
    } else {
      print("IMAGE IS NOT SELECTED");
    }
  }

  String? validateFirstName(String value) {
    if (value.isEmpty) {
      return "Provide valid first name";
    } else {
      return null;
    }
  }

  String? validateMiddleName(String value) {
    if (value.isEmpty) {
      return "Provide valid middle name";
    } else {
      return null;
    }
  }

  String? validateLastName(String value) {
    if (value.isEmpty) {
      return "Provide valid last name";
    } else {
      return null;
    }
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return "Provide valid email";
    } else {
      return null;
    }
  }

  String? validateAge(String value) {
    if (value.isEmpty) {
      return "Provide valid age";
    } else {
      return null;
    }
  }

  String? validateBirthPlace(String value) {
    if (value.isEmpty) {
      return "Provide valid age";
    } else {
      return null;
    }
  }

  String? validateAnyDisability(String value) {
    if (value.isEmpty) {
      return "Provide valid disability";
    } else {
      return null;
    }
  }

  String? validateAddress(String value) {
    if (value.isEmpty) {
      return "Provide valid address";
    } else {
      return null;
    }
  }

  String? validateBuilding(String value) {
    if (value.isEmpty) {
      return "Provide valid data";
    } else {
      return null;
    }
  }

  String? validateCity(String value) {
    if (value.isEmpty) {
      return "Provide valid city name";
    } else {
      return null;
    }
  }

  String? validateZipCode(String value) {
    if (value.isEmpty) {
      return "Provide valid ZIP Code";
    } else {
      return null;
    }
  }

  String? validatePastorName(String value) {
    if (value.isEmpty) {
      return "Provide valid pastor name";
    } else {
      return null;
    }
  }

  String? validateChurchName(String value) {
    if (value.isEmpty) {
      return "Provide valid church name";
    } else {
      return null;
    }
  }

  String? validateCollege(String value) {
    if (value.isEmpty) {
      return "Provide valid college name";
    } else {
      return null;
    }
  }

  String? validateOtherCollege(String value) {
    if (value.isEmpty) {
      return "Provide valid college name";
    } else {
      return null;
    }
  }

  String? validateDenomination(String value) {
    if (value.isEmpty) {
      return "Provide valid denomination";
    } else {
      return null;
    }
  }

  String? validateSubCastle(String value) {
    if (value.isEmpty) {
      return "Provide valid sub-castle";
    } else {
      return null;
    }
  }

  String? validateHobbies(String value) {
    if (value.isEmpty) {
      return "Provide valid data";
    } else {
      return null;
    }
  }

  String? validateAboutMeFavThings(String value) {
    if (value.isEmpty) {
      return "Provide valid data";
    } else {
      return null;
    }
  }

  // void validateAndSave({
  //   required profile_type,
  //   required salutation,
  //   required first_name,
  //   required middle_name,
  //   required last_name,
  //   required gender,
  //   // required phone_number,
  //   required country,
  //   required state,
  //   required zip_code,
  //   required city,
  //   required address,
  //   required building,
  //   required pastor_name,
  //   required church_name,
  //   // required city_name,
  //   // required contact_number,
  //   required education,
  //   required college,
  //   required other_college,
  //   required occupation,
  //   required annual_income,
  //   required maritial_status,
  //   required no_of_children,
  //   required mother_tongue,
  //   required denomination,
  //   required sub_castle,
  //   required family_values,
  //   required family_type,
  //   required family_income,
  //   required father_status,
  //   required mother_status,
  //   required no_of_brothers,
  //   required no_of_sisters,
  //   required religious_value,
  //   required diet,
  //   required drink,
  //   required smoke,
  //   required languages_known,
  //   required hobbies,
  //   required age,
  //   required birth_place,
  //   required height,
  //   required weight,
  //   required body_type,
  //   required skin_tone,
  //   required any_disability,
  //   required blood_group,
  //   required about_me_fav_thing,
  //   required first_image,
  //   required second_image,
  //   required third_image,
  //   required verificationFrontDocument,
  //   required verificationBackDocument,
  // }) {
  //   isFormValid = formKey.currentState!.validate();
  //   if (!isFormValid) {
  //     return;
  //   } else {
  //     formKey.currentState!.save();
  //   }
  // }

  init() {
    databases = Databases(client);
  }

  void validateAndSave({
    required email,
    required profile_type,
    required salutation,
    required first_name,
    required middle_name,
    required last_name,
    required gender,
    // required phone_number,
    required country,
    required state,
    required zip_code,
    required city,
    required address,
    required building,
    required pastor_name,
    required church_name,
    // required city_name,
    // required contact_number,
    required education,
    required college,
    required other_college,
    required occupation,
    required annual_income,
    required maritial_status,
    required no_of_children,
    required mother_tongue,
    required denomination,
    required sub_castle,
    required family_values,
    required family_type,
    required family_income,
    required father_status,
    required mother_status,
    required no_of_brothers,
    required no_of_sisters,
    required religious_value,
    required diet,
    required drink,
    required smoke,
    required languages_known,
    required hobbies,
    required age,
    required birth_place,
    required height,
    required weight,
    required body_type,
    required skin_tone,
    required any_disability,
    required blood_group,
    required about_me_fav_thing,
    required first_image,
    required second_image,
    required third_image,
    required verificationFrontDocument,
    required verificationBackDocument,
  }) async {
    isFormValid = formKey.currentState!.validate();
    if (!isFormValid) {
      return;
    } else {
      formKey.currentState!.save();
      if (imagePathFirst.isNotEmpty &&
          imagePathSecond.isNotEmpty &&
          imagePathThird.isNotEmpty) {
        try {
          await authRepository
              .uploadUserImageFirst(imagePathFirst.value)
              .then((value) async {
            uploadedFileIdFirst = value.$id;
            await authRepository.createUser({
              'email': email,
              'profile_type': profile_type,
              'salutation': salutation,
              'first_name': first_name,
              'middle_name': middle_name,
              'last_name': last_name,
              'gender': gender,
              'country': country,
              'state': state,
              'zip_code': zip_code,
              'city': city,
              'address': address,
              'building': building,
              'pastor_name': pastor_name,
              'church_name': church_name,
              'education': education,
              'college': college,
              'other_college': other_college,
              'occupation': occupation,
              'annual_income': annual_income,
              'maritial_status': maritial_status,
              'no_of_children': no_of_children,
              'mother_tongue': mother_tongue,
              'denomination': denomination,
              'sub_castle': sub_castle,
              'family_values': family_values,
              'family_type': family_type,
              'family_income': family_income,
              'father_status': father_status,
              'mother_status': mother_status,
              'no_of_brothers': no_of_brothers,
              'no_of_sisters': no_of_sisters,
              'religious_value': religious_value,
              'diet': diet,
              'drink': drink,
              'smoke': smoke,
              'languages_known': languages_known,
              'hobbies': hobbies,
              'age': age,
              'birth_place': birth_place,
              'height': height,
              'weight': weight,
              'body_type': bodyType,
              'skin_tone': skinTone,
              'any_disability': any_disability,
              'blood_group': bloodGroup,
              'about_me_fav_thing': about_me_fav_thing,
              'first_image': uploadedFileIdFirst,
              'second_image': second_image,
              'third_image': third_image,
              'verificationFrontDocument': verificationFrontDocument,
              'verificationBackDocument': verificationBackDocument,
              'second_image': uploadedFileIdFirst,
              'third_image': uploadedFileIdFirst,
              'verificationFrontDocument': uploadedFileIdFirst,
              'verificationBackDocument': uploadedFileIdFirst,
              "imagePathProfile":
                  Get.find<AccountPageController>().imagePathProfile,
            }).then((value) {
              Get.offNamed(Routes.tabsPage);
            }).catchError((error) async {
              if (error is AppwriteException) {
                print('${error.response}');
              } else {
                print("OK");
              }

              // await authRepository
              //     .deleteUserImageFirst(uploadedFileIdFirst);
              // await authRepository
              //     .deleteUserImageFirst(uploadedFileIdFirst);
              // await authRepository
              //     .deleteUserImageFirst(uploadedFileIdFirst);
              // await authRepository
              //     .deleteUserImageFirst(uploadedFileIdFirst);
              // await authRepository
              //     .deleteUserImageFirst(uploadedFileIdFirst);
            });
          }).catchError((error) {
            if (error is AppwriteException) {
              print('${error.response}');
            } else {
              print("OK");
            }
          });
        } catch (e) {
          SnackBar(
            content: Text("$e"),
          );
        }
      } else {
        print("SELECT IMAGE");
      }
    }
  }
}
