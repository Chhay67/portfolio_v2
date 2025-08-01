import 'package:flutter/material.dart';
import '../../../core/config/app_config.dart';
import '../../widgets/cached_image_network.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key,this.constraints});
  final BoxConstraints? constraints;
  @override
  Widget build(BuildContext context) {

    return const CachedNetworkImageWidget(
      imageUrl: AppConfig.profileUrl,
    );

  }
}
