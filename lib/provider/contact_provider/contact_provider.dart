

import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio_v2/core/config/app_config.dart';

import 'contact_state.dart';


final contactProvider = AutoDisposeNotifierProvider<ContactNotifier, ContactState>(() => ContactNotifier());


class ContactNotifier extends AutoDisposeNotifier<ContactState> {
  @override
  ContactState build() {
    return const ContactState();
  }


  Future<void> sendMessage({
    required String name,
    required String email,
    required String message,
  }) async {
    try {
      state = state.copyWith(isLoading: true);

      final url = Uri.parse(AppConfig.emailSenderUrl);

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "name": name,
          "email": email,
          "message": message,
        }),
      );


      if (response.statusCode != 200) {
        throw HttpException(
          'Failed to send message: ${response.statusCode}',
          uri: url,
        );
      }

      state = state.copyWith(isLoading: false);
    } catch (e) {

      state = state.copyWith(
        isLoading: false,
        errorMessage: 'Failed to send message.',
      );
      rethrow;
    }
  }



}