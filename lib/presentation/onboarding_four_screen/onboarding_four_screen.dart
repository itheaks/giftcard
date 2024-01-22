import '../onboarding_four_screen/widgets/titledescription_item_widget.dart';
import 'bloc/onboarding_four_bloc.dart';
import 'models/onboarding_four_model.dart';
import 'models/titledescription_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingFourScreen extends StatelessWidget {
  const OnboardingFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingFourBloc>(
        create: (context) => OnboardingFourBloc(
            OnboardingFourState(onboardingFourModelObj: OnboardingFourModel()))
          ..add(OnboardingFourInitialEvent()),
        child: OnboardingFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 110.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUntitledDesign343x371,
                        height: 343.v,
                        width: 371.h),
                    SizedBox(height: 112.v),
                    _buildOnboardingFour(context)
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildOnboardingFour(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.h),
              child: BlocBuilder<OnboardingFourBloc, OnboardingFourState>(
                  builder: (context, state) {
                return CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 92.v,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          state.sliderIndex = index;
                        }),
                    itemCount: state.onboardingFourModelObj
                            ?.titledescriptionItemList.length ??
                        0,
                    itemBuilder: (context, index, realIndex) {
                      TitledescriptionItemModel model = state
                              .onboardingFourModelObj
                              ?.titledescriptionItemList[index] ??
                          TitledescriptionItemModel();
                      return TitledescriptionItemWidget(model);
                    });
              })),
          SizedBox(height: 15.v),
          BlocBuilder<OnboardingFourBloc, OnboardingFourState>(
              builder: (context, state) {
            return SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.onboardingFourModelObj
                            ?.titledescriptionItemList.length ??
                        0,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                        spacing: 4,
                        activeDotColor: theme.colorScheme.errorContainer,
                        dotColor: theme.colorScheme.onPrimary,
                        dotHeight: 8.v,
                        dotWidth: 8.h)));
          }),
          SizedBox(height: 24.v),
          CustomElevatedButton(
              text: "lbl_get_started".tr,
              onPressed: () {
                onTapGetStarted(context);
              }),
          SizedBox(height: 9.v)
        ]));
  }

  /// Navigates to the onboardingFiveScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingFiveScreen,
    );
  }
}
