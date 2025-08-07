import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/core/utils/app_value.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({
    super.key,
    required this.imageUrl,
    this.height = 200,
    this.width = 200,
    this.errorText = 'No image available',
    this.child,
    this.isAssetImage = false,
  });

  final String imageUrl;
  final double width;
  final double height;
  final String errorText;
  final Widget? child;

  final bool isAssetImage;
  @override
  Widget build(BuildContext context) {

    if (isAssetImage) {
      return Container(
        alignment:  Alignment.topRight,
        padding: const EdgeInsets.only(right: AppPadding.medium,top:AppPadding.medium ),
        constraints:  BoxConstraints(
            maxHeight: height,
            maxWidth: width),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:  DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fitWidth),
        ),
        child: child,
      );
    }

    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        alignment:  Alignment.topRight,
        padding: const EdgeInsets.only(right: AppPadding.medium,top:AppPadding.medium ),
        constraints:  BoxConstraints(
            maxHeight: height,
            maxWidth: width),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
        child: child,
      ),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
      maxHeightDiskCache: height.toInt(),
      maxWidthDiskCache: width.toInt(),
      progressIndicatorBuilder: (context, url, progress) =>
          SizedBox(
            width: 32,
            height: 32,
            child: Center(
              child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
            ),
          ),
      memCacheHeight: height.toInt(),
      memCacheWidth: width.toInt(),
      errorWidget: (context, url, error) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1,color: Theme.of(context).dividerColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            const Icon(Icons.error),
            Flexible(child: Text(errorText,style: context.smallTextStyle,))
          ],
        ),
      ),
    );
  }
}
