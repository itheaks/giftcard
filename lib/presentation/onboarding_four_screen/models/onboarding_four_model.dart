// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'titledescription_item_model.dart';

/// This class defines the variables used in the [onboarding_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingFourModel extends Equatable {
  OnboardingFourModel({this.titledescriptionItemList = const []}) {}

  List<TitledescriptionItemModel> titledescriptionItemList;

  OnboardingFourModel copyWith(
      {List<TitledescriptionItemModel>? titledescriptionItemList}) {
    return OnboardingFourModel(
      titledescriptionItemList:
          titledescriptionItemList ?? this.titledescriptionItemList,
    );
  }

  @override
  List<Object?> get props => [titledescriptionItemList];
}
