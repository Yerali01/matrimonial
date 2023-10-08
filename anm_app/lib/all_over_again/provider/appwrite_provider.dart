import 'dart:io';

import 'package:anm_app/all_over_again/provider/appwrite_constants.dart';
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;
import 'package:flutter/material.dart';

class AppWriteProvider {
  Client client = Client();

  Account? account;
  Storage? storage;
  Databases? databases;
  late final file;

  AppWriteProvider() {
    client
        .setEndpoint(AppWriteConstants.endPoint)
        .setProject(AppWriteConstants.projectId)
        .setSelfSigned(status: true);

    account = Account(client);
    storage = Storage(client);
    databases = Databases(client);
  }

  //registration
  // Future<models.Account> signup(Map map) async {
  Future signup(Map map) async {
    final response = account!.create(
      userId: map["userId"],
      email: map["email"],
      password: map["password"],
      // name: map["name"],
    );
    return response;
  }

  //войти
  Future<models.Session> login(Map map) async {
    final response = account!.createEmailSession(
      email: map["email"],
      password: map["password"],
    );
    return response;
  }

  Future<dynamic> logout(String sessionId) async {
    final response = account!.deleteSession(
      sessionId: sessionId,
    );
    return response;
  }

  //set or change omage in profile screen
  Future<models.File> uploadUserImageFirst(String imagePathFirst) async {
    String fileNameFirst =
        "${DateTime.now().millisecondsSinceEpoch}.${imagePathFirst.split(".").last}";
    final response = storage!.createFile(
      bucketId: AppWriteConstants.usersBucketId,
      fileId: ID.unique(),
      file: InputFile(path: imagePathFirst, filename: fileNameFirst),
    );
    return response;
  }

// delete employee image
  Future<dynamic> deleteUserImageFirst(String fileId) async {
    final response = storage!.deleteFile(
      bucketId: AppWriteConstants.usersBucketId,
      fileId: fileId,
    );
    return response;
  }

  Future<models.Document> createUser(Map map) async {
    final response = databases!.createDocument(
      databaseId: AppWriteConstants.dbId,
      collectionId: AppWriteConstants.usersCollectionId,
      documentId: ID.unique(),
      data: {
        'profile_type': map["profile_type"],
        'salutation': map["salutation"],
        'first_name': map["first_name"],
        'middle_name': map['middle_name'],
        'last_name': map['last_name'],
        'gender': map['gender'],
        'country': map['country'],
        'state': map['state'],
        'zip_code': map['zip_code'],
        'city': map['city'],
        'address': map['address'],
        'building': map['building'],
        'pastor_name': map['pastor_name'],
        'church_name': map['church_name'],
        'education': map['education'],
        'college': map['college'],
        'other_college': map['other_college'],
        'occupation': map['occupation'],
        'annual_income': map['annual_income'],
        'maritial_status': map['maritial_status'],
        'no_of_children': map['no_of_children'],
        'mother_tongue': map['mother_tongue'],
        'denomination': map['denomination'],
        'sub_castle': map['sub_castle'],
        'family_values': map['family_values'],
        'family_type': map['family_type'],
        'family_income': map['family_income'],
        'father_status': map['father_status'],
        'mother_status': map['mother_status'],
        'no_of_brothers': map['no_of_brothers'],
        'no_of_sisters': map['no_of_sisters'],
        'religious_value': map['religious_value'],
        'diet': map['diet'],
        'drink': map['drink'],
        'smoke': map['smoke'],
        'languages_known': map['languages_known'],
        'hobbies': map['hobbies'],
        'age': map['age'],
        'birth_place': map['birth_place'],
        'height': map['height'],
        'weight': map['weight'],
        'body_type': map['body_type'],
        'skin_tone': map['skin_tone'],
        'any_disability': map['any_disability'],
        'blood_group': map['blood_group'],
        'about_me_fav_thing': map['about_me_fav_thing'],
        'first_image': map['first_image'],
        'second_image': map['second_image'],
        'third_image': map['third_image'],
        'verificationFrontDocument': map['verificationFrontDocument'],
        'verificationBackDocument': map["verificationBackDocument"],
        "imagePathProfile": map["imagePathProfile"],
      },
    );
    return response;
  }

  Future<models.DocumentList> getUsers() async {
    final response = databases!.listDocuments(
      databaseId: AppWriteConstants.dbId,
      collectionId: AppWriteConstants.usersCollectionId,
    );

    return response;
  }

  Future resetPassword(String password) async {
    // Future result = account!.updatePassword(password: password);
    final response = account?.updatePassword(password: password);
    return response;
  }

  // downloadFile(fileId) async {
  //   storage!.getFileView(
  //     bucketId: AppWriteConstants.usersBucketId,
  //     fileId: fileId,
  //     getURL: true,
  //   );
  // }
}
