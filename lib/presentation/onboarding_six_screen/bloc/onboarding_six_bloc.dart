import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:amit_s_application2/presentation/onboarding_six_screen/models/onboarding_six_model.dart';
part 'onboarding_six_event.dart';
part 'onboarding_six_state.dart';

/// A bloc that manages the state of a OnboardingSix according to the event that is dispatched to it.
class OnboardingSixBloc extends Bloc<OnboardingSixEvent, OnboardingSixState> {
  OnboardingSixBloc(OnboardingSixState initialState) : super(initialState) {
    on<OnboardingSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingSixInitialEvent event,
    Emitter<OnboardingSixState> emit,
  ) async {}
}
