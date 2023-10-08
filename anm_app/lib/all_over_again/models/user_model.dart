import 'package:anm_app/all_over_again/profile/account_page_controller.dart';
import 'package:get/get.dart';

class User {
  String? profile_type;
  late String salutation;
  String? first_name;
  String? middle_name;
  late String last_name;
  late String gender;
  // required phone_number,
  late String country;
  late String state;
  late String zip_code;
  late String city;
  late String address;
  late String building;
  late String pastor_name;
  late String church_name;
  // required city_name,
  // required contact_number,
  late String education;
  late String college;
  late String other_college;
  late String occupation;
  late String annual_income;
  late String maritial_status;
  late String no_of_children;
  late String mother_tongue;
  late String denomination;
  late String sub_castle;
  late String family_values;
  late String family_type;
  late String family_income;
  late String father_status;
  late String mother_status;
  late String no_of_brothers;
  late String no_of_sisters;
  late String religious_value;
  late String diet;
  late String drink;
  late String smoke;
  late String languages_known;
  late String hobbies;
  late String age;
  late String birth_place;
  late String height;
  late String weight;
  late String body_type;
  late String skin_tone;
  late String any_disability;
  late String blood_group;
  late String about_me_fav_thing;
  // late String first_image;
  late String second_image;
  late String third_image;
  late String verification_front_document;
  late String verification_back_document;
  // late String imagePathProfile;

  User.fromMap(Map<String, dynamic> map) {
    profile_type:
    map["profile_type"];
    salutation:
    map["salutation"];
    first_name:
    map["first_name"];
    middle_name:
    map["middle_name"];
    last_name:
    map["last_name"];
    gender:
    map["gender"];
    country:
    map["country"];
    state:
    map["state"];
    zip_code:
    map["zip_code"];
    city:
    map["city"];
    address:
    map["address"];
    building:
    map["building"];
    pastor_name:
    map["pastor_name"];
    church_name:
    map["church_name"];
    education:
    map["education"];
    college:
    map["college"];
    other_college:
    map["other_college"];
    occupation:
    map["occupation"];
    annual_income:
    map["annual_income"];
    maritial_status:
    map["maritial_status"];
    no_of_children:
    map["no_of_children"];
    mother_tongue:
    map["mother_tongue"];
    denomination:
    map["denomination"];
    sub_castle:
    map["sub_castle"];
    family_values:
    map["family_values"];
    family_type:
    map["family_type"];
    family_income:
    map["family_income"];
    father_status:
    map["father_status"];
    mother_status:
    map["mother_status"];
    no_of_brothers:
    map["no_of_brothers"];
    no_of_sisters:
    map["no_of_sisters"];
    religious_value:
    map["religious_value"];
    diet:
    map["diet"];
    drink:
    map["drink"];
    smoke:
    map["smoke"];
    languages_known:
    map[""];
    hobbies:
    map["hobbies"];
    age:
    map["age"];
    birth_place:
    map["birth_place"];
    height:
    map["height"];
    weight:
    map["weight"];
    body_type:
    map["body_type"];
    skin_tone:
    map["skin_tone"];
    any_disability:
    map["any_disability"];
    blood_group:
    map["blood_group"];
    about_me_fav_thing:
    map["about_me_fav_thing"];
    // first_image:
    // map["first_image"];
    second_image:
    map["second_image"];
    third_image:
    map["third_image"];
    verification_front_document:
    map["verificationFrontDocument"];
    verification_back_document:
    map["verificationBackDocument"];
    // imagePathProfile:
    // map["imagePathProfile"];
  }

  Map<String, dynamic> toMap() {
    return {
      "profile_type": profile_type,
      "salutation": salutation,
      "first_name": first_name,
      "middle_name": middle_name,
      "last_name": last_name,
      "gender": gender,
      // required phone_number,
      "country": country,
      "state": state,
      "zip_code": zip_code,
      "city": city,
      "address": address,
      "building": building,
      "pastor_name": pastor_name,
      "church_name": church_name,
      // required city_name,
      // required contact_number,
      "education": education,
      "college": college,
      "other_college": other_college,
      "occupation": occupation,
      "annual_income": annual_income,
      "maritial_status": maritial_status,
      "no_of_children": no_of_children,
      "mother_tongue": mother_tongue,
      "denomination": denomination,
      "sub_castle": sub_castle,
      "family_values": family_values,
      "family_type": family_type,
      "family_income": family_income,
      "father_status": father_status,
      "mother_status": mother_status,
      "no_of_brothers": no_of_brothers,
      "no_of_sisters": no_of_sisters,
      "religious_value": religious_value,
      "diet": diet,
      "drink": drink,
      "smoke": smoke,
      "languages_known": languages_known,
      "hobbies": hobbies,
      "age": age,
      "birth_place": birth_place,
      "height": height,
      "weight": weight,
      "body_type": body_type,
      "skin_tone": skin_tone,
      "any_disability": any_disability,
      "blood_group": blood_group,
      "about_me_fav_thing": about_me_fav_thing,
      // "first_image": first_image,
      "second_image": second_image,
      "third_image": third_image,
      "verificationFrontDocument": verification_front_document,
      "verificationBackDocument": verification_back_document,
      // "imagePathProfile": imagePathProfile,
    };
  }
}
