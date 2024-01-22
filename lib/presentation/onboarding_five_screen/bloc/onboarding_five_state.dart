// ignore_for_file: must_be_immutable

part of 'onboarding_five_bloc.dart';

/// Represents the state of OnboardingFive in the application.
class OnboardingFiveState extends Equatable {
  OnboardingFiveState({
    this.sliderIndex = 0,
    this.onboardingFiveModelObj,
  });

  OnboardingFiveModel? onboardingFiveModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        onboardingFiveModelObj,
      ];
  OnboardingFiveState copyWith({
    int? sliderIndex,
    OnboardingFiveModel? onboardingFiveModelObj,
  }) {
    return OnboardingFiveState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      onboardingFiveModelObj:
          onboardingFiveModelObj ?? this.onboardingFiveModelObj,
    );
  }
}
