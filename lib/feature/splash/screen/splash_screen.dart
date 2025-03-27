import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener, BlocProvider;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cqu/feature/splash/cubit/splash_cubit.dart';
import 'package:my_cqu/injection_container.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SplashCubit>()..initializeApp(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if(state.status == SplashStatus.authorized){
            context.pushNamed('login');
          }
        },
        child: Scaffold(
          body: ZoomIn(
            duration: Duration(milliseconds: 1000),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/cqu-logo.svg',
                height: 100.h,
                width: 100.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
