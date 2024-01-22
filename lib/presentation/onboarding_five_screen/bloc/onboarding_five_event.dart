// ignore_for_file: must_be_immutable

part of 'onboarding_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingFiveEvent extends Equatable {}

/// Event that is dispatched when the OnboardingFive widget is first created.
class OnboardingFiveInitialEvent extends OnboardingFiveEvent {
  @override
  List<Object?> get props => [];
}
