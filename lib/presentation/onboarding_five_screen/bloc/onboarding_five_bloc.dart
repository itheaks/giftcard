import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/titledescription1_item_model.dart';
import 'package:amit_s_application2/presentation/onboarding_five_screen/models/onboarding_five_model.dart';
part 'onboarding_five_event.dart';
part 'onboarding_five_state.dart';

/// A bloc that manages the state of a OnboardingFive according to the event that is dispatched to it.
class OnboardingFiveBloc
    extends Bloc<OnboardingFiveEvent, OnboardingFiveState> {
  OnboardingFiveBloc(OnboardingFiveState initialState) : super(initialState) {
    on<OnboardingFiveInitialEvent>(_onInitialize);
  }

  List<Titledescription1ItemModel> fillTitledescription1ItemList() {
    return List.generate(1, (index) => Titledescription1ItemModel());
  }

  _onInitialize(
    OnboardingFiveInitialEvent event,
    Emitter<OnboardingFiveState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        onboardingFiveModelObj: state.onboardingFiveModelObj?.copyWith(
            titledescription1ItemList: fillTitledescription1ItemList())));
  }
}
