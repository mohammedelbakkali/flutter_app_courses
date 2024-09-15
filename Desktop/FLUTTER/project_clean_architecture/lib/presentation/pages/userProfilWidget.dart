
import "package:flutter/material.dart";
import "package:project_clean_architecture/data/models/userModel.dart";
import "package:project_clean_architecture/data/source/source.dart";
import 'package:http/http.dart' as http;

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  UserModel? user;
  bool isLoding = false;
  String? errorMessage ;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  Future<void> _loadUserProfile() async {
       setState(() {
         isLoding = true;
         errorMessage = null;
       });

       try{
         final remoteDataSource = RemoteUserDataSource(http.Client());
         final fetchedUser = await remoteDataSource.fetchUserProfile();
         print(fetchedUser);
         setState(() {
           user = fetchedUser;
         });
       }catch(error){
         setState(() {
        errorMessage = error.toString();
      });
       }finally {
      setState(() {
        isLoding = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Profile')),
      body: Center(
        child: isLoding
            ? const CircularProgressIndicator()
            : errorMessage != null
                ? Text('Error: $errorMessage')
                : user != null
                    ? Text('Name: ${user!.name}')
                    : const Text('No data available'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadUserProfile,
        child: const Icon(Icons.download),
      ),
    );
  }
}