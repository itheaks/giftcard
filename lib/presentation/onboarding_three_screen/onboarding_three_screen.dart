import '../onboarding_three_screen/widgets/eight_item_widget.dart';
import 'bloc/onboarding_three_bloc.dart';
import 'models/eight_item_model.dart';
import 'models/onboarding_three_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingThreeBloc>(
        create: (context) => OnboardingThreeBloc(OnboardingThreeState(
            onboardingThreeModelObj: OnboardingThreeModel()))
          ..add(OnboardingThreeInitialEvent()),
        child: OnboardingThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Spacer(flex: 47),
                  CustomImageView(
                      imagePath: ImageConstant.imgUntitledDesign333x368,
                      height: 333.v,
                      width: 368.h),
                  Spacer(flex: 52),
                  _buildOnboardingThreeSlider(context)
                ]))));
  }

  /// Section Widget
  Widget _buildOnboardingThreeSlider(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.customBorderTL24),
        child: Container(
            height: 248.v,
            width: double.maxFinite,
            padding: EdgeInsets.all(24.h),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              BlocBuilder<OnboardingThreeBloc, OnboardingThreeState>(
                  builder: (context, state) {
                return CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 191.v,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          state.sliderIndex = index;
                        }),
                    itemCount:
                        state.onboardingThreeModelObj?.eightItemList.length ??
                            0,
                    itemBuilder: (context, index, realIndex) {
                      EightItemModel model =
                          state.onboardingThreeModelObj?.eightItemList[index] ??
                              EightItemModel();
                      return EightItemWidget(model, onTapButton: () {
                        onTapButton(context);
                      });
                    });
              }),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: BlocBuilder<OnboardingThreeBloc, OnboardingThreeState>(
                      builder: (context, state) {
                    return Container(
                        height: 8.v,
                        margin: EdgeInsets.only(bottom: 83.v),
                        child: AnimatedSmoothIndicator(
                            activeIndex: state.sliderIndex,
                            count: state.onboardingThreeModelObj?.eightItemList
                                    .length ??
                                0,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                                spacing: 4,
                                activeDotColor:
                                    theme.colorScheme.errorContainer,
                                dotColor: theme.colorScheme.onPrimary,
                                dotHeight: 8.v,
                                dotWidth: 8.h)));
                  }))
            ])));
  }

  /// Navigates to the onboardingFourScreen when the action is triggered.
  onTapButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingFourScreen,
    );
  }
}
