
import 'package:flutter/cupertino.dart';
import 'package:portfolio_v2/core/mixin/padding_mixin.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

class MobilePage extends StatelessWidget with ValueMixin{
  const MobilePage({super.key,required this.contentPage});
  final Widget contentPage;
  @override
  Widget build(BuildContext context) {
     return Container(
      margin: EdgeInsets.symmetric(horizontal: context.defaultResponsive(), vertical: padding(context)),
      constraints: const BoxConstraints.expand(),
      child: contentPage
    );
  }
}
