import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_v2/core/mixin/padding_mixin.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/core/utils/responsive_util.dart';
import 'package:portfolio_v2/page/home_page/widget/what_i_can_do_card_item.dart';


class HomePage extends StatelessWidget with ValueMixin{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUtil(context).isMobile;
    return SingleChildScrollView(
      padding:  EdgeInsets.all( context.defaultResponsive(mobile: 16,tablet: 20,desktop: 22)),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ABOUT ME',style: context.largeTextStyle.copyWith(fontSize: 32),),
          const Divider(),
          Text('Hello there! I\'m thrilled to welcome you to my portfolio. I am a passionate and versatile full-stack developer with a keen interest in exploring the latest cutting-edge technologies.My journey in the world of web development has been nothing short of exhilarating, andI constantly strive to enhance my skills and embrace emerging trends in the industry.',
            style: context.smallTextStyle,
          ),
          const SizedBox(height: 10),
          Text('What I do!',style: context.largeTextStyle.copyWith(fontSize: 32),),
      StaggeredGrid.count(
        crossAxisCount: isMobile ? 1: 2,
          children: const [
            WhatICanDoCardItem(
                  title: 'Web Devvelopment',
                  description: 'As a developer, I find myself mostcaptivated by the power and flexibility ofNEXT.js. I\'m always eager to dive into newprojects that leverage NEXT.js anddiscover innovative ways to create fast, scalable, and user-friendly applications.',
                ),
            WhatICanDoCardItem(
                  title: 'App Development',
                  description: 'With a focus on user-centric design andcutting-edge technologies, I thrive onbuilding intuitive and efficient appsthat make a positive impact on people\'slives. Let\'s turn ideas into reality andshape the future together.',
                ),

            WhatICanDoCardItem(
              title: 'App Development',
              description: 'ether.',
            ),
            WhatICanDoCardItem(
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



