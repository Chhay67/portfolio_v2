import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({
    super.key,
    required this.imageUrl,
    this.height = 200,
    this.width = 200,
    this.errorText = 'No image available',
  });

  final String imageUrl;
  final double width;
  final double height;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        constraints:  BoxConstraints(
            maxHeight: height,
            maxWidth: width),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      height: height,
      width: width,
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
