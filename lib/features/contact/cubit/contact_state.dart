part of 'contact_cubit.dart';

abstract class ContactState extends Equatable {
  const ContactState();

  @override
  List<Object> get props => [];
}

class ContactInitial extends ContactState {}

class ContactSubmitting extends ContactState {}

class ContactSuccess extends ContactState {
  final String message;
  const ContactSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class ContactFailure extends ContactState {
  final String error;
  const ContactFailure({required this.error});

  @override
  List<Object> get props => [error];
}
