import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_v2/core/mixin/url_launcher_mixin.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/widgets/content_card.dart';
import 'package:portfolio_v2/provider/contact_provider/contact_provider.dart';

import '../../core/exception/app_exception.dart';
import '../../core/utils/app_fonts.dart';
import '../home_page/widget/what_i_can_do_card_item.dart';

class ContactPage extends ConsumerStatefulWidget {
  const ContactPage({super.key});

  @override
  ConsumerState createState() => _ContactPageState();
}

class _ContactPageState extends ConsumerState<ContactPage>
    with UrlLauncherMixin {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    _formKey.currentState?.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;
    try {
      final name = _nameController.text.trim();
      final email = _emailController.text.trim();
      final message = _messageController.text.trim();
      // Call the contact provider to send the message
      await ref.read(contactProvider.notifier).sendMessage(
            name: name,
            email: email,
            message: message,
          );
      // Clear the form fields after submission
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();

      // Optionally, show a success message or navigate to another page
      if (!mounted) return;
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.green.shade500,
          margin: EdgeInsets.all(context.padding()),
          behavior: SnackBarBehavior.floating,
          content:  Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.info_outline),
              Flexible(child: Text('Message sent successfully!',style: context.smallTextStyle,)),
            ],
          )));
    }on ServerException catch (error) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.red.shade500,
          margin: EdgeInsets.all(context.padding()),
          behavior: SnackBarBehavior.floating,
          content:  Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.info_outline),
              Flexible(child: Text(error.message.toString(),style: context.smallTextStyle,)),
            ],
          )));
    }
  }

  @override
  Widget build(BuildContext context) {
    final r = context.responsive;
    final padding = context.padding();
    final largeStyle = context.largeTextStyle
        .copyWith(fontSize: 26, fontFamily: AppFonts.poppins);
    final isMobile = r.isMobile;
    final theme = Theme.of(context);
    final smallStyle = context.smallTextStyle;
    final contactState = ref.watch(contactProvider);
    return SingleChildScrollView(
      padding: isMobile ? EdgeInsets.zero : EdgeInsets.all(padding),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CONTACT',
            style: largeStyle,
          ),
          const Divider(),
          StaggeredGrid.count(
            crossAxisCount: isMobile ? 1 : 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: [
              CardItem(
                color: isMobile
                    ? theme.cardTheme.color
                    : theme.scaffoldBackgroundColor,
                padding: padding,
                largeStyle: largeStyle,
                smallStyle: smallStyle,
                fontSize: 16,
                title: 'Phone Number',
                description: '012 831 354',
              ),
              CardItem(
                color: isMobile
                    ? theme.cardTheme.color
                    : theme.scaffoldBackgroundColor,
                padding: padding,
                largeStyle: largeStyle,
                smallStyle: smallStyle,
                fontSize: 16,
                title: 'My Email:',
                description: 'songkimchhay67@gmail.com',
              ),
            ],
          ),
          ContentView(
              color: isMobile
                  ? theme.cardTheme.color
                  : theme.scaffoldBackgroundColor,
              child: Padding(
                padding: EdgeInsets.all(padding),
                child: Form(
                  key: _formKey,
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'I am always open to discussing new projects, opportunities in tech world,partnerships and more so mentorship. ',
                        style: smallStyle,
                      ),
                      TextFormField(
                        controller: _nameController,
                        textInputAction: TextInputAction.next,
                        style: smallStyle,
                        decoration: const InputDecoration(
                          labelText: 'Name :',
                        ),
                        validator: (value) =>
                            value!.isEmpty ? 'Please enter your name' : null,
                      ),
                      TextFormField(
                        controller: _emailController,
                        textInputAction: TextInputAction.next,
                        style: smallStyle,
                        decoration: const InputDecoration(
                          labelText: 'Email :',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your email';
                          }
                          final emailRegex =
                              RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
                          return emailRegex.hasMatch(value)
                              ? null
                              : 'Invalid email';
                        },
                      ),
                      TextFormField(
                        controller: _messageController,
                        textInputAction: TextInputAction.done,
                        style: smallStyle,
                        decoration: const InputDecoration(
                          labelText: 'Message :',
                        ),
                        validator: (value) =>
                            value!.isEmpty ? 'Please enter your message' : null,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (contactState.isLoading && contactState.infoMessage.isNotEmpty)
                      Text(contactState.infoMessage,style: smallStyle,),
                      OutlinedButton(
                          onPressed: contactState.isLoading ? null :_submitForm,
                          child: contactState.isLoading
                              ? const CircularProgressIndicator()
                              : Text('Submit', style: smallStyle))
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
