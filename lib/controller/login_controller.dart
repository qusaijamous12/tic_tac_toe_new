import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../shared/utils/utils.dart';

class LoginController extends GetxController{
  final isLoading=RxBool(false);
  final _googleSignIn=GoogleSignIn();

  Future<bool> signInWithGoogle() async {
    isLoading(true);
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        print('User cancelled the Google sign-in.');
        isLoading(false);
        Utils.showToastMessage(title: 'User cancelled the Google sign-in.');
        return false;
      }

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      print('ID Token: ${googleAuth.idToken}');
      print('Access Token: ${googleAuth.accessToken}');

      final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

      if (userCredential.user != null) {
        print('User signed in successfully: ${userCredential.user?.displayName}');
        isLoading(false);

        // await CasheHelper.SaveData(value: userCredential.credential?.token, key: 'token');

        return true;
      }
      else {
        print('User sign-in failed.');
        isLoading(false);
        Utils.showToastMessage(title: 'User sign-in failed.');

        return false;
      }

    } catch (error) {
      print('Google Sign-In Error: $error');
      isLoading(false);
      Utils.showToastMessage(title: 'Google Sign-In Error: $error');

      return false;
    }
  }



}