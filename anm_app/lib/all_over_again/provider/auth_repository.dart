import 'package:anm_app/all_over_again/provider/appwrite_provider.dart';
import 'package:appwrite/models.dart' as models;
import 'package:flutter/material.dart';

class AuthRepository {
  final AppWriteProvider appWriteProvider;
  AuthRepository(this.appWriteProvider);

  //registration
  // Future<models.Account> signup(Map map) => appWriteProvider.signup(map);
  Future signup(Map map) => appWriteProvider.signup(map);

  Future<models.Session> login(Map map) => appWriteProvider.login(map);

  Future<dynamic> logout(String sessionId) =>
      appWriteProvider.logout(sessionId);

  Future<models.File> uploadUserImageFirst(String imagePathFirst) =>
      appWriteProvider.uploadUserImageFirst(imagePathFirst);

  Future<dynamic> deleteUserImageFirst(String fileId) =>
      appWriteProvider.deleteUserImageFirst(fileId);

  Future<models.Document> createUser(Map map) =>
      appWriteProvider.createUser(map);

  Future<models.DocumentList> getUsers() => appWriteProvider.getUsers();

  Future resetPassword(password) => appWriteProvider.resetPassword(password);

  // Future downloadFile(fileId) => appWriteProvider.downloadFile(fileId);
}
