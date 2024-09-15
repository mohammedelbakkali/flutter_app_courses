





import 'package:project_clean_architecture/domaine/entities/user.dart';
import 'package:project_clean_architecture/domaine/repositories/userRepository.dart';

import '../source/source.dart';

class UserRepositoryImpl implements UserRepository{
    final RemoteUserDataSource remoteDataSource;
     UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<User> getUserProfile() async{
      return remoteDataSource.fetchUserProfile();
  }
  
}