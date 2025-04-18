import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/core/common/widgets/custom_button.dart';
import 'package:my_cqu/core/common/widgets/custom_text_field.dart';
import 'package:my_cqu/core/common/widgets/field_decoration.dart';
import 'package:my_cqu/core/utils/helpers.dart';
import 'package:my_cqu/feature/auth/presentation/cubit/login_cubit.dart';
import 'package:my_cqu/feature/auth/presentation/widgets/login_dialog_box.dart';
import 'package:my_cqu/feature/auth/presentation/widgets/login_text.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:my_cqu/feature/auth/presentation/widgets/visibility_icon_button.dart';
import 'package:my_cqu/init_dependencies.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.loginStatus == LoginStatus.failure) {
            Helpers.showErrorToastMessage(
              context,
              errorMessageTitle: "Error",
              errorMessageSubtitle: "Invalid username or password",
            );
          } else if (state.loginStatus == LoginStatus.success) {
            Helpers.showSuccessToastMessage(
              context,
              successMessageTitle: "Success",
              successMessageSubTitle: "Login Successfully",
            );
            context.pushNamed('home');
          }
        },
        builder: (context, state) {
          var formKey = context.read<LoginCubit>().formKey;
          return Scaffold(
            backgroundColor: kBackgroundColor,
            body: SafeArea(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: FormBuilder(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(10.h),
                          SvgPicture.asset(
                            'assets/icons/logo.svg',
                            height: 70.h,
                          ),
                          Gap(30.h),
                          LoginText(
                            text: "Login",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          LoginText(
                            text:
                                "Sign in with your CQUni Username or email \naddress",
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            textColor: kSecondaryGrey,
                          ),
                          Gap(30.h),
                          CustomTextField(
                            name: 'username',
                            title: "Email",
                            hasAstric: true,
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                              FormBuilderValidators.email(),
                            ]),
                            decoration: textFieldDecoration(
                              radius: 60.sp,
                              hintText: 'Your username or email address',
                            ),
                          ),
                          Gap(15.h),
                          CustomTextField(
                            name: 'password',
                            title: "Password",
                            hasAstric: true,
                            obscureText: state.hidePassword,
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                              FormBuilderValidators.password(
                                maxLength: 10,
                                minLength: 8,
                              ),
                            ]),
                            decoration: passwordFieldDecoration(
                              suffixIcon: VisibilityIconButton(
                                onTap: () {
                                  context
                                      .read<LoginCubit>()
                                      .togglePassword();
                                },
                                isVisible: state.hidePassword,
                              ),
                              radius: 60.sp,
                              hintText: 'Your password',
                            ),
                          ),
                          Gap(30.h),
                          GestureDetector(
                            onTap:
                                () =>
                                    context
                                        .read<LoginCubit>()
                                        .toggleIsRemembered(),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2.sp),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: kSecondaryGrey,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      5.sp,
                                    ),
                                    color:
                                        state.isRemembered
                                            ? kBrandColor
                                            : Colors.transparent,
                                  ),
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Icon(
                                      Icons.done,
                                      size: 18.h,
                                      color:
                                          state.isRemembered
                                              ? Colors.white
                                              : kBackgroundColor,
                                    ),
                                  ),
                                ),
                                Gap(10.w),
                                LoginText(
                                  text: "Remember Me",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                          Gap(20.h),
                          CustomButton(
                            text: "Login",
                            isLoading:
                                state.loginStatus == LoginStatus.loading,
                            backgroundColor: kBrandColor,
                            borderRadius: 50,
                            onTap: () {
                              if (state.loginStatus !=
                                  LoginStatus.loading) {
                                final isValid =
                                    formKey.currentState
                                        ?.saveAndValidate() ??
                                    false;
                                if (isValid) {
                                  context.read<LoginCubit>().loginUser();
                                } else {
                                  formKey.currentState?.validate();
                                }
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(35.h),
                  Container(
                    margin: EdgeInsets.all(20.w),
                    padding: EdgeInsets.symmetric(
                      vertical: 12.h,
                      horizontal: 10.w,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kSecondaryBlue,
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LoginText(
                          onTap: () {
                            showDialog(
                              useSafeArea: true,
                              context: context,
                              barrierDismissible: true,
                              builder: (context) {
                                return LoginDialogBox(
                                  title: "What is My Username?",
                                  data: state.usernameInstructions,
                                );
                              },
                            );
                          },
                          text: "What is my username ?",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          textColor: kBrandColor,
                          textDecoration: TextDecoration.underline,
                          decorationColor: kBrandColor,
                        ),
                        LoginText(
                          onTap: () {
                            showDialog(
                              useSafeArea: true,
                              context: context,
                              barrierDismissible: true,
                              builder: (context) {
                                return LoginDialogBox(
                                  title: "What is My Default Password ?",
                                  data: state.passwordInstructions,
                                  isPasswordInstruction: true,
                                );
                              },
                            );
                          },
                          text: "What is my default password ?",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          textColor: kBrandColor,
                          textDecoration: TextDecoration.underline,
                          decorationColor: kBrandColor,
                        ),

                        Gap(16.h),
                        LoginText(
                          text: "Forgot username ?",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          textColor: kBrandColor,
                          textDecoration: TextDecoration.underline,
                          decorationColor: kBrandColor,
                        ),
                        LoginText(
                          text: "Forgot password ?",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          textColor: kBrandColor,
                          textDecoration: TextDecoration.underline,
                          decorationColor: kBrandColor,
                        ),
                        Gap(16.h),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            text:
                                "Contact the technology and service Assistance Centre (TaSAC) if you experience difficulties. Email ",
                            children: [
                              TextSpan(
                                text: "tasac@cqu.edu.au ",
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium!.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kBrandColor,
                                ),
                              ),
                              TextSpan(
                                text: "or phone toll free ",
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium!.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: "1300666620",
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium!.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kBrandColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
