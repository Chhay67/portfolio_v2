import 'package:flutter/material.dart';
import 'package:portfolio_v2/page/widgets/page_view_count.dart';
import '../../../core/constants/url_constants.dart';
import '../../widgets/cached_image_network.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, this.constraints});
  final BoxConstraints? constraints;
  @override
  Widget build(BuildContext context) {
    return const CachedNetworkImageWidget(
      imageUrl: UrlConstants.profileUrl,
      child: PageViewCount(),
    );
  }
}


