import 'bloc/onboarding_one_bloc.dart';
import 'models/onboarding_one_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingOneBloc>(
        create: (context) => OnboardingOneBloc(
            OnboardingOneState(onboardingOneModelObj: OnboardingOneModel()))
          ..add(OnboardingOneInitialEvent()),
        child: OnboardingOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingOneBloc, OnboardingOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 47.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 267.v,
                            width: 280.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgDisregLogoPrevUi,
                                  height: 222.v,
                                  width: 235.h,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapView(context);
                                      },
                                      child: Container(
                                          height: 267.v,
                                          width: 280.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.blueGray100,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      140.h)))))
                            ])),
                        SizedBox(height: 71.v),
                        Container(
                            decoration: AppDecoration.outlineBlackC,
                            child: Text("lbl_cregtech".tr,
                                style: theme.textTheme.displayMedium)),
                        SizedBox(height: 10.v)
                      ]))));
    });
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }
}
