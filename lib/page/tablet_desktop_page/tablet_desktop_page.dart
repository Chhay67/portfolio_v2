import 'package:flutter/cupertino.dart';
import '../widgets/default_layout.dart';

class TabletDesktopPage extends StatelessWidget{
  const TabletDesktopPage({super.key,required this.contentWidget,required this.profileWidget});
  final Widget contentWidget;
  final Widget profileWidget;
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      profileWidget: profileWidget,
      contentWidget: contentWidget,
    );
  }
}
