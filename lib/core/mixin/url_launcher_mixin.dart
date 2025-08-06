

import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:url_launcher/url_launcher.dart';

mixin class UrlLauncherMixin {


  Future<void> _linkLauncherUrl({required String linkUrl}) async {
    final Uri url = Uri.parse(linkUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $linkUrl';
    }
  }

  Future<void> onLaunchUrl(BuildContext context,{required String linkUrl})  async{
    try{
      await _linkLauncherUrl(linkUrl: linkUrl);
    }catch(error){
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
              Flexible(child: Text(error.toString(),style: context.smallTextStyle,)),
            ],
          )));
    }
  }


  Future<void> sendEmail({
    required BuildContext context,
    required String name,
    required String email,
    required String message,
  }) async {

    try{
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: 'songkimchhay67@gmail.com', // 🔁 Replace with your email
        queryParameters: {
          'subject': 'Contact from $name',
          'body': 'Name: $name\nEmail: $email\n\n$message',
        },
      );

      if (await canLaunchUrl(emailUri)) {
        await launchUrl(emailUri);
      } else {
        throw 'Could not launch email app';
      }
    }catch(error){
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
              Flexible(child: Text(error.toString(),style: context.smallTextStyle,)),
            ],
          )));
    }
  }


}