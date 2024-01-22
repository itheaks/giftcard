import '../onboarding_five_screen/widgets/titledescription1_item_widget.dart';
import 'bloc/onboarding_five_bloc.dart';
import 'models/onboarding_five_model.dart';
import 'models/titledescription1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingFiveScreen extends StatelessWidget {
  const OnboardingFiveScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingFiveBloc>(
        create: (context) => OnboardingFiveBloc(
            OnboardingFiveState(onboardingFiveModelObj: OnboardingFiveModel()))
          ..add(OnboardingFiveInitialEvent()),
        child: OnboardingFiveScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Spacer(flex: 49),
                  CustomImageView(
                      imagePath: ImageConstant.imgUntitledDesign343x369,
                      height: 343.v,
                      width: 369.h),
                  Spacer(flex: 50),
                  _buildOnboardingSlider(context)
                ]))));
  }

  /// Section Widget
  Widget _buildOnboardingSlider(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 24.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 33.h),
              child: BlocBuilder<OnboardingFiveBloc, OnboardingFiveState>(
                  builder: (context, state) {
                return CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 90.v,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          state.sliderIndex = index;
                        }),
                    itemCount: state.onboardingFiveModelObj
                            ?.titledescription1ItemList.length ??
                        0,
                    itemBuilder: (context, index, realIndex) {
                      Titledescription1ItemModel model = state
                              .onboardingFiveModelObj
                              ?.titledescription1ItemList[index] ??
                          Titledescription1ItemModel();
                      return Titledescription1ItemWidget(model);
                    });
              })),
          SizedBox(height: 16.v),
          BlocBuilder<OnboardingFiveBloc, OnboardingFiveState>(
              builder: (context, state) {
            return SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.onboardingFiveModelObj
                            ?.titledescription1ItemList.length ??
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
          SizedBox(height: 7.v)
        ]));
  }

  /// Navigates to the onboardingSixScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingSixScreen,
    );
  }
}
