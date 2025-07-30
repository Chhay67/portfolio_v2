
import 'package:flutter/cupertino.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

class MobilePage extends StatelessWidget  {
  const MobilePage({super.key,required this.contentPage});
  final Widget contentPage;
  @override
  Widget build(BuildContext context) {
     return Container(
      margin: EdgeInsets.all(context.padding()),
      constraints: const BoxConstraints.expand(),
      child: contentPage
    );
  }
}
