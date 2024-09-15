

import 'package:project_clean_architecture/domaine/repositories/userRepository.dart';

import '../entities/user.dart';

class GetUserProfile {
  final UserRepository repository;
  GetUserProfile(this.repository);

  Future<User> call(){
     return repository.getUserProfile();
  }
  
}