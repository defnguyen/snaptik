import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:snaptik/core/network/api_client.dart';
import 'package:snaptik/l10n/app_localizations.dart'; // For localized messages

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  final ApiClient apiClient;
  // final AppLocalizations l10n; // Pass or get context

  ContactCubit({required this.apiClient /*, required this.l10n */})
      : super(ContactInitial());

  Future<void> submitContactForm({
    required String name,
    required String email,
    required String message,
  }) async {
    // Localized strings (replace with actual l10n calls)
    final String successMsg =
        "Message sent successfully! We will get back to you soon.";
    final String errorMsg = "Failed to send message. Please try again later.";

    if (name.isEmpty || email.isEmpty || message.isEmpty) {
      emit(const ContactFailure(
          error: "Please fill in all fields.")); // Localize
      return;
    }
    // Basic email validation (can be more robust)
    if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)) {
      emit(const ContactFailure(
          error: "Please enter a valid email address.")); // Localize
      return;
    }

    emit(ContactSubmitting());

    try {
      final success = await apiClient.sendContactMessage(
        name: name,
        email: email,
        message: message,
      );

      if (success) {
        emit(ContactSuccess(message: successMsg));
      } else {
        // API returned non-success, but no exception (e.g., backend validation error)
        emit(ContactFailure(error: errorMsg));
      }
    } on Exception catch (e) {
      print("Error submitting contact form: $e");
      emit(ContactFailure(
          error: e
              .toString()
              .replaceFirst('Exception: ', ''))); // Use error from ApiClient
    } catch (e) {
      print("Unexpected error submitting contact form: $e");
      emit(ContactFailure(error: errorMsg));
    }
  }
}
