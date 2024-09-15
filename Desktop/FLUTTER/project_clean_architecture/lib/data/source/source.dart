

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_clean_architecture/data/models/userModel.dart';

class RemoteUserDataSource {
  final http.Client client;
  RemoteUserDataSource(this.client);
  

  Future<UserModel> fetchUserProfile() async {
      final response = await client.get(Uri.parse("https://jsonplaceholder.typicode.com/users/1"));
      if(response.statusCode == 200){
          return UserModel.fromJson(json.decode(response.body));
      }else {
         throw Exception('Failed to load user profile');
      }
  }
}