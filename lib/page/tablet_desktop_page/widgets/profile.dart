
import 'package:flutter/cupertino.dart';

import '../../../core/theme/color.dart';
import '../../../core/utils/app_images.dart';
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
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.defaultRadius),
        image: const DecorationImage(
          image: AssetImage(AppImages.defaultProfile),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
