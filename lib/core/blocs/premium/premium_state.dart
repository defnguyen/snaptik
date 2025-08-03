part of 'premium_cubit.dart';

abstract class PremiumState extends Equatable {
  final bool isPremium;
  final String? appUserID;
  const PremiumState({required this.isPremium, this.appUserID});

  @override
  List<Object?> get props => [isPremium, appUserID];
}

class PremiumInitial extends PremiumState {
  const PremiumInitial() : super(isPremium: false, appUserID: null);
}

class PremiumLoading extends PremiumState {
  const PremiumLoading({required super.isPremium, super.appUserID});
}

class PremiumStatus extends PremiumState {
  const PremiumStatus({required super.isPremium, super.appUserID});
}

class PremiumOperationSuccess extends PremiumState {
  final String? message;
  const PremiumOperationSuccess(
      {required super.isPremium, super.appUserID, this.message});

  @override
  List<Object?> get props => [isPremium, appUserID, message];
}

class PremiumOperationFailure extends PremiumState {
  final String error;
  final bool purchaseCancelled;
  const PremiumOperationFailure(
      {required super.isPremium,
      super.appUserID,
      required this.error,
      this.purchaseCancelled = false});

  @override
  List<Object?> get props => [isPremium, appUserID, error, purchaseCancelled];
}
