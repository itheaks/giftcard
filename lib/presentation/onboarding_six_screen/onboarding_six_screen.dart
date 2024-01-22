import 'bloc/onboarding_six_bloc.dart';
import 'models/onboarding_six_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class OnboardingSixScreen extends StatelessWidget {
  const OnboardingSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingSixBloc>(
      create: (context) => OnboardingSixBloc(OnboardingSixState(
        onboardingSixModelObj: OnboardingSixModel(),
      ))
        ..add(OnboardingSixInitialEvent()),
      child: OnboardingSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingSixBloc, OnboardingSixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 536.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24.h),
                        ),
                      ),
                    ),
                  ),
                  _buildButtonSection(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildButtonSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 21.h,
          top: 143.v,
          right: 27.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 82.h,
          vertical: 95.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 13.v),
            SizedBox(
              width: 161.h,
              child: Text(
                "msg_work_in_progress".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineLarge!.copyWith(
                  height: 1.67,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
