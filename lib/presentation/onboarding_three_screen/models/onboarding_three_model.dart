// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'eight_item_model.dart';

/// This class defines the variables used in the [onboarding_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingThreeModel extends Equatable {
  OnboardingThreeModel({this.eightItemList = const []}) {}

  List<EightItemModel> eightItemList;

  OnboardingThreeModel copyWith({List<EightItemModel>? eightItemList}) {
    return OnboardingThreeModel(
      eightItemList: eightItemList ?? this.eightItemList,
    );
  }

  @override
  List<Object?> get props => [eightItemList];
}
