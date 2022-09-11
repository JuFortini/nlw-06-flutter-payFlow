import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Container(
                color: AppColors.primary,
                width: size.width,
                height: size.height * 0.4,
              ),
              Positioned(
                  top: size.height * 0.05,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    AppImages.person,
                    width: 208,
                    height: 373,
                  )),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: size.height * 0.05,
                  child: Column(
                    children: [
                      Image.asset(AppImages.logomini),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 70, right: 70, top: 24),
                        child: Text(
                          "Organize seus boletos em um só lugar",
                          style: AppTextStyles.titleHome,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 40, right: 40, top: 40),
                        child: SocialLoginButton(
                          onTap: () {
                            print("clicou");
                          },
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
