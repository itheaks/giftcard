import 'bloc/onboarding_two_bloc.dart';
import 'models/onboarding_two_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingTwoBloc>(
        create: (context) => OnboardingTwoBloc(
            OnboardingTwoState(onboardingTwoModelObj: OnboardingTwoModel()))
          ..add(OnboardingTwoInitialEvent()),
        child: OnboardingTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingTwoBloc, OnboardingTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    Spacer(),
                    CustomImageView(
                        imagePath: ImageConstant.imgUntitledDesign,
                        height: 365.v,
                        width: 375.h),
                    SizedBox(height: 89.v),
                    _buildOnboardingTwoColumn(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildOnboardingTwoColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24.h),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              width: 208.h,
              child: Text("msg_unwrap_savings".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                      theme.textTheme.headlineSmall!.copyWith(height: 1.33))),
          SizedBox(height: 7.v),
          Text("msg_over_300_brands".tr, style: theme.textTheme.bodyMedium),
          SizedBox(height: 16.v),
          SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
                  effect: ScrollingDotsEffect(
                      spacing: 4,
                      activeDotColor: theme.colorScheme.errorContainer,
                      dotColor: theme.colorScheme.onPrimary,
                      dotHeight: 8.v,
                      dotWidth: 8.h))),
          SizedBox(height: 24.v),
          CustomElevatedButton(
              text: "lbl_get_started".tr,
              onPressed: () {
                onTapGetStarted(context);
              }),
          SizedBox(height: 7.v)
        ]));
  }

  /// Navigates to the onboardingThreeScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingThreeScreen,
    );
  }
}
