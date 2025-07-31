import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import '../../../core/utils/app_value.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key,this.constraints});
  final BoxConstraints? constraints;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints ?? const BoxConstraints(
          minHeight: 100,
          minWidth: 100,
          maxHeight: 200,
          maxWidth: 200),

      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppRadius.defaultRadius),
        // image: const DecorationImage(
        //   image: AssetImage(AppImages.defaultProfile),
        //   fit: BoxFit.fill,
        // ),
      ),
      child:  SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Placeholder(child: Center(child: Text(' image coming soon!',textAlign: TextAlign.center,style: context.smallTextStyle,)),),
      ),
    );
  }
}
