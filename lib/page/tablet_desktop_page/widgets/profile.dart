import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_v2/core/provider/page_view_count_provider.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/widgets/page_view_count.dart';
import '../../../core/config/app_config.dart';
import '../../widgets/cached_image_network.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, this.constraints});
  final BoxConstraints? constraints;
  @override
  Widget build(BuildContext context) {
    return const CachedNetworkImageWidget(
      imageUrl: AppConfig.profileUrl,
      child: PageViewCount(),
    );
  }
}


