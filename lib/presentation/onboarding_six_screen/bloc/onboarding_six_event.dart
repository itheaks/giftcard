// ignore_for_file: must_be_immutable

part of 'onboarding_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingSixEvent extends Equatable {}

/// Event that is dispatched when the OnboardingSix widget is first created.
class OnboardingSixInitialEvent extends OnboardingSixEvent {
  @override
  List<Object?> get props => [];
}
