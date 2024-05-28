import 'package:busha_test/ui/common/ui_helpers.dart';
import 'package:busha_test/ui/extensions/build_context_extension.dart';
import 'package:busha_test/ui/utilities/string_util.dart';
import 'package:busha_test/ui/utilities/validator.dart';
import 'package:busha_test/ui/widgets/back_button.dart';
import 'package:busha_test/ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../widgets/overlay_loader.dart';
import 'login_view.form.dart';
import 'login_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(name: 'email'),
    FormTextField(name: 'password'),
  ],
)
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    double bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: context.colorScheme.background,
        body: SafeArea(
          child: OverlayLoader(
            isBusy: viewModel.isBusy,
            child: Form(
              key: viewModel.formKey,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: CustomBackButton(),
                  ),
                  verticalSpace(20),
                  Expanded(
                    child: ListView(
                      padding: screenPadding,
                      children: [
                        const Text(
                          'Log in to your account',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        verticalSpace(8),
                        Text(
                          'Welcome back! Please enter your registered email address to continue',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black.withOpacity(.6),
                          ),
                        ),
                        verticalSpace(24),
                        const Text(
                          'Email address',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff5A5A5A),
                          ),
                        ),
                        verticalSpace(4),
                        TextFormField(
                          controller: emailController,
                          focusNode: emailFocusNode,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            isDense: true,
                            fillColor: const Color(0xffEFEFEF),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: context.colorScheme.error,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: 'Enter Email',
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black38,
                            ),
                          ),
                          validator: (value) => Validator.validateEmail(value),
                          onFieldSubmitted: (value) {
                            if (isNotEmpty(value)) {
                              passwordFocusNode.requestFocus();
                            }
                          },
                        ),
                        verticalSpace(16),
                        const Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff5A5A5A),
                          ),
                        ),
                        verticalSpace(4),
                        TextFormField(
                          controller: passwordController,
                          focusNode: passwordFocusNode,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: viewModel.hidePassword,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffEFEFEF),
                            isDense: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: context.colorScheme.error,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: 'Enter Password',
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black38,
                            ),
                            suffixIcon: Builder(builder: (context) {
                              if (viewModel.hidePassword) {
                                return TextButton(
                                  onPressed: viewModel.toggleVisibility,
                                  child: const Text(
                                    'SHOW',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff5A5A5A),
                                    ),
                                  ),
                                );
                              }

                              return TextButton(
                                onPressed: viewModel.toggleVisibility,
                                child: const Text(
                                  'HIDE',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff5A5A5A),
                                  ),
                                ),
                              );
                            }),
                          ),
                          validator: (value) =>
                              Validator.validatePassword(value),
                        ),
                      ],
                    ),
                  ),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 50),
                    child: bottomInset != 0
                        ? const SizedBox.shrink()
                        : PrimaryButton(
                            onTap: () {
                              if (viewModel.formKey.currentState?.validate() ??
                                  false) {
                                viewModel.submit();
                              }
                            },
                          ),
                  ),
                  verticalSpace(40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();

  @override
  void onViewModelReady(LoginViewModel viewModel) {
    syncFormWithViewModel(viewModel);
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(LoginViewModel viewModel) {
    disposeForm();
    super.onDispose(viewModel);
  }
}
