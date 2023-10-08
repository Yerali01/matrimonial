import 'package:anm_app/all_over_again/splash/splashScreen_controller.dart';
import 'package:anm_app/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  SplashScreenView({super.key});

//   @override
//   _SplashScreenViewState createState() => _SplashScreenViewState();
// }

// class _SplashScreenViewState extends State<SplashScreenView> {
  // late Timer _timer;

  // @override
  // void initState() {
  //   _timer = Timer(const Duration(milliseconds: 4000), () {
  //     Navigator.of(context).pushReplacementNamed(
  //       widget.value == AuthStatus.uninitialized
  //           ? CircularProgress.routeName
  //           : widget.value == AuthStatus.authenticated
  //               ? TabsPage.routeName
  //               : LoginPageView.routeName,
  //     );
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Helper.getAssetName("splashIcon.png", "virtual"),
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Helper.getAssetName("MealMonkeyLogo.png", "virtual"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
