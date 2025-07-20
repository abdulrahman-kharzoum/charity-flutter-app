part of 'localization_cubit.dart';

@immutable
abstract class LocalizationState {
  final Locale locale;
  const LocalizationState(this.locale);
}

class LocalizationInitial extends LocalizationState {
  const LocalizationInitial(super.locale);
}

class LocalizationChanged extends LocalizationState {
  const LocalizationChanged(super.locale);
}