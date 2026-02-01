import 'package:flutter/material.dart';
import 'package:flutter_coursef/core/presentation/components/big_button.dart';
import 'package:flutter_coursef/core/presentation/components/input_field.dart';
import 'package:flutter_coursef/ui/color_styles.dart';
import 'package:flutter_coursef/ui/text_styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              Text('Hello', style: TextStyles.headerBold,),
              Text(
                'Welcome Back!',
                style: TextStyles.largeTextRegular,
              ),
              const SizedBox(height: 57,),
              const InputField(label: 'Email', placeHolder: 'Enter Email'),
              const SizedBox(height: 30,),
              const InputField(label: 'Password', placeHolder: 'Enter Password'),
              const SizedBox(height: 20,),
              Text(
                'Forgot Password?',
                style: TextStyles.smallerRegular.copyWith(
                  color: ColorStyles.secondary100,
                ),
              ),
              SizedBox(height: 20,),
              BigButton('Sign In', () {
              }),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                  const SizedBox(width: 7,),
                  Text(
                    'Or Sign in With',
                    style: TextStyles.smallerBold.copyWith(
                      color: ColorStyles.gray4,
                    ),
                  ),
                  const SizedBox(width: 7,),
                  Container(
                    width: 50,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/google_button.png',
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(width: 15,),
                  Image.asset(
                    'assets/image/facebook_button.png',
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
              SizedBox(height: 55,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyles.smallerBold
              ),
                  Text(
                    'Sign up',
                    style: TextStyles.smallerBold.copyWith(
                      color: ColorStyles.secondary100,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
