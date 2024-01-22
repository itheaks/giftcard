// ignore_for_file: must_be_immutable

part of 'onboarding_six_bloc.dart';

/// Represents the state of OnboardingSix in the application.
class OnboardingSixState extends Equatable {
  OnboardingSixState({this.onboardingSixModelObj});

  OnboardingSixModel? onboardingSixModelObj;

  @override
  List<Object?> get props => [
        onboardingSixModelObj,
      ];
  OnboardingSixState copyWith({OnboardingSixModel? onboardingSixModelObj}) {
    return OnboardingSixState(
      onboardingSixModelObj:
          onboardingSixModelObj ?? this.onboardingSixModelObj,
    );
  }
}
