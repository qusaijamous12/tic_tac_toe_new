import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/login_controller.dart';
import '../../shared/resources/color_manager.dart';
import '../../shared/resources/image_manger.dart';
import '../../shared/resources/spaces_manager.dart';
import '../../shared/widgets/my_button.dart';
import '../tab_bar_screen/tab_bar_screen.dart';
import 'widgets/logo_and_title_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _loginController = Get.find<LoginController>(tag: 'login_controller');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(PaddingManager.kPadding),
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoAndTitleWidget(),

              ConditionalBuilder(
                condition: _loginController.isLoading.value,
                builder: (context)=>const Center(child:  CircularProgressIndicator(color: ColorManager.kPrimary,)),
                fallback: (context)=>MyButton(onTap: ()async{
                 final result= await _loginController.signInWithGoogle();
                 if(result){
                   Get.offAll(()=>const TabBarScreen());

                 }
                }, title: 'Sign in with Google', image: IconManager.googleIcon),
              ),
              const SizedBox(height: PaddingManager.kPadding / 1.5),
              MyButton(
                onTap: () {},
                title: 'Sign in with Facebook',
                image: IconManager.facebookIcon,
              ),
              const SizedBox(height: PaddingManager.kPadding),
            ],
          ),
        ),
      ),
    );
  }
}
