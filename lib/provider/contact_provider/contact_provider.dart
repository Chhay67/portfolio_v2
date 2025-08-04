

import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio_v2/core/config/app_config.dart';

import '../../core/exception/app_exception.dart';
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
      state = state.copyWith(isLoading: true,infoMessage: 'Booting up email sender take around 1 min...');

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
        throw const ServerException(
          message: 'Failed to send message.',
        );
      }

      state = const ContactState();
    }  catch (e) {

      state =  const ContactState(errorMessage: 'Failed to send message.',);
      throw const ServerException(message: 'Failed to send message.');
    }
  }



}