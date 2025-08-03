import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/network/api_client.dart';
import 'package:snaptik/features/contact/cubit/contact_cubit.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  late ContactCubit _contactCubit;

  @override
  void initState() {
    super.initState();
    _contactCubit = ContactCubit(
      apiClient: context.read<ApiClient>(), // Get ApiClient from context
      // l10n: AppLocalizations.of(context)!, // Pass l10n if needed
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    _contactCubit.close(); // Dispose cubit if created here
    super.dispose();
  }

  void _submitForm() {
    // Hide keyboard
    FocusScope.of(context).unfocus();

    if (_formKey.currentState!.validate()) {
      _contactCubit.submitContactForm(
        name: _nameController.text.trim(),
        email: _emailController.text.trim(),
        message: _messageController.text.trim(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocProvider.value(
      value: _contactCubit,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.contactTitle),
        ),
        body: BlocListener<ContactCubit, ContactState>(
          listener: (context, state) {
            if (state is ContactSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(state.message),
                    backgroundColor: Colors.green),
              );
              // Optionally clear form or navigate back after success
              _formKey.currentState?.reset();
              _nameController.clear();
              _emailController.clear();
              _messageController.clear();
              // Future.delayed(Duration(seconds: 2), () => Navigator.maybePop(context));
            } else if (state is ContactFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(state.error), backgroundColor: Colors.red),
              );
            }
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppConstants.defaultPadding),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Have questions or feedback? Send us a message!", // Localize
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: l10n.contactNameHint,
                      prefixIcon: const Icon(Icons.person_outline),
                      // border: OutlineInputBorder(), // Use themed decoration
                    ),
                    validator: (value) =>
                        (value == null || value.trim().isEmpty)
                            ? 'Please enter your name'
                            : null, // Localize
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: l10n.contactEmailHint,
                      prefixIcon: const Icon(Icons.email_outlined),
                      // border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty)
                        return 'Please enter your email'; // Localize
                      if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value))
                        return 'Please enter a valid email'; // Localize
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      labelText: l10n.contactMessageHint,
                      prefixIcon: const Icon(Icons.message_outlined),
                      // border: OutlineInputBorder(),
                      alignLabelWithHint:
                          true, // Better alignment for multiline
                    ),
                    maxLines: 5,
                    minLines: 3,
                    textInputAction: TextInputAction.done,
                    validator: (value) =>
                        (value == null || value.trim().isEmpty)
                            ? 'Please enter your message'
                            : null, // Localize
                    onFieldSubmitted: (_) =>
                        _submitForm(), // Submit on keyboard done
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<ContactCubit, ContactState>(
                    builder: (context, state) {
                      final bool isLoading = state is ContactSubmitting;
                      return ElevatedButton.icon(
                        icon: isLoading
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                    strokeWidth: 2, color: Colors.white))
                            : const Icon(Icons.send),
                        label: Text(isLoading
                            ? l10n.contactSending
                            : l10n.contactSendButton),
                        onPressed: isLoading ? null : _submitForm,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
