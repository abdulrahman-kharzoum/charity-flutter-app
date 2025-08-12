part of 'item_details_cubit.dart';

@immutable
abstract class ItemDetailsState {}

class ItemDetailsInitial extends ItemDetailsState {}

class ItemDetailsLoading extends ItemDetailsState {}

class ItemDetailsLoaded extends ItemDetailsState {
  final String decryptedQrData;
  // other processed data
  ItemDetailsLoaded(this.decryptedQrData);
}

class ItemDetailsError extends ItemDetailsState {
  final String message;
  ItemDetailsError(this.message);
}