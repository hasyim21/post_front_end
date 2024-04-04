import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/buttons.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../main/pages/main_page.dart';
import '../bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  static String route = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColors.background,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(
                    color: AppColors.border,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Center(
                      child: Text(
                        'POS',
                        style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    const SpaceHeight(),
                    CustomTextField(
                      controller: emailController,
                      label: 'Email',
                    ),
                    const SpaceHeight(),
                    CustomTextField(
                      controller: passwordController,
                      label: 'Password',
                      obscureText: true,
                    ),
                    const SpaceHeight(height: 24.0),
                    BlocConsumer<LoginBloc, LoginState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          success: (_) {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              MainPage.route,
                              (route) => false,
                            );
                          },
                          error: (message) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(message),
                                backgroundColor: AppColors.red,
                              ),
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return Button.filled(
                              onPressed: () {
                                context.read<LoginBloc>().add(
                                      LoginEvent.login(
                                        email: emailController.text,
                                        password: passwordController.text,
                                      ),
                                    );
                              },
                              label: 'Masuk',
                            );
                          },
                          loading: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        );
                      },
                    ),
                    const SpaceHeight(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
