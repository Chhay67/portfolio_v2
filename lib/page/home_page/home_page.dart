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
      physics: const BouncingScrollPhysics(),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ABOUT ME',style: largeStyle),
          const Divider(),
          Text('Hello there! I\'m thrilled to welcome you to my portfolio. I am a passionate and versatile full-stack developer with a keen interest in exploring the latest cutting-edge technologies.My journey in the world of web and app development has been nothing short of exhilarating, andI constantly strive to enhance my skills and embrace emerging trends in the industry.',
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
                  title: 'Web Development',
              description: 'I specialize in building fast, scalable, and maintainable web applications using modern frameworks like Angular and Vue.js. I enjoy transforming complex requirements into elegant, user-friendly interfaces while following best practices in performance and accessibility.',
                ),

            CardItem(
              color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
              padding: padding,
              largeStyle: largeStyle,
              smallStyle: smallStyle,
              fontSize: fontSize,
              title: 'App Development',
              description: 'I build scalable and maintainable mobile applications using Flutter and Kotlin, guided by Clean Architecture, the MVVM pattern, and SOLID principles. My focus is on creating high-performance, intuitive apps with a well-structured codebase that’s easy to test, extend, and maintain. I strive to turn real-world ideas into seamless digital experiences.',
            ),
            CardItem(
              color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
              padding: padding,
              largeStyle: largeStyle,
              smallStyle: smallStyle,
              fontSize: fontSize,
              title: 'Mentorship',
              description: 'I have also found great joy in sharing my knowledge with others. Being a technicalmentor allows me to give back to thecommunity that has supported methroughout my career. ',
            ),

          ],

      ),


        ],
      ),
    );
  }
}



