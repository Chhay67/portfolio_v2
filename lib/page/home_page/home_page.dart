import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/home_page/widget/what_i_can_do_card_item.dart';

import '../../core/utils/app_fonts.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final r = context.responsive;
    final padding = context.padding();
    final largeStyle = context.largeTextStyle.copyWith(fontSize: 26,fontFamily: AppFonts.poppins);
    final smallStyle = context.smallTextStyle;
    final isMobile = r.isMobile;
    const fontSize = 18.0;
    final theme = Theme.of(context);
    return SingleChildScrollView(
      padding: isMobile ? EdgeInsets.zero : EdgeInsets.all( padding),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ABOUT ME',style: largeStyle),
          const Divider(),
          Text('Hello there! I\'m thrilled to welcome you to my portfolio. I am a passionate and versatile full-stack developer with a keen interest in exploring the latest cutting-edge technologies.My journey in the world of web development has been nothing short of exhilarating, andI constantly strive to enhance my skills and embrace emerging trends in the industry.',
            style: smallStyle,
          ),
          const SizedBox(height: 10),
          Text('What I do!',style: largeStyle),
      StaggeredGrid.count(
        crossAxisCount: isMobile ? 1: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
          children:  [
            CardItem(
              color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
              padding: padding,
                largeStyle: largeStyle,
                smallStyle: smallStyle,
                fontSize: fontSize,
                  title: 'Web Devvelopment',
                  description: 'As a developer, I find myself mostcaptivated by the power and flexibility ofNEXT.js. I\'m always eager to dive into newprojects that leverage NEXT.js anddiscover innovative ways to create fast, scalable, and user-friendly applications.',
                ),
            CardItem(
              color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
              padding: padding,
              largeStyle: largeStyle,
              smallStyle: smallStyle,
              fontSize: fontSize,
                  title: 'App Development',
                  description: 'With a focus on user-centric design andcutting-edge technologies, I thrive onbuilding intuitive and efficient appsthat make a positive impact on people\'slives. Let\'s turn ideas into reality andshape the future together.',
                ),

            CardItem(
              color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
              padding: padding,
              largeStyle: largeStyle,
              smallStyle: smallStyle,
              fontSize: fontSize,
              title: 'App Development',
              description: 'ether.',
            ),
            CardItem(
              color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
              padding: padding,
              largeStyle: largeStyle,
              smallStyle: smallStyle,
              fontSize: fontSize,
              title: 'App Development',
              description: 'With a focus on user-centric design andcutting-edge technologies, I thrive onbuilding intuitive and efficient appsthat make a positive impact on people\'slives. Let\'s turn ideas into reality andshape the future together.',
            ),
          ],

      ),


        ],
      ),
    );
  }
}



