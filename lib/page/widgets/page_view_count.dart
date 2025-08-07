import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

import '../../core/provider/page_view_count_provider.dart';

class PageViewCount extends ConsumerWidget {
  const PageViewCount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageViewState = ref.watch(pageViewCountStreamProvider);
    return pageViewState.when(
      data: (count) => Badge(
        alignment: Alignment.center,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        label: Text(count.toString(),style: context.smallTextStyle.copyWith(fontSize: 10),),

      ),
      error: (error, stackTrace) => const SizedBox.shrink(),
      loading: () => const Center(
        child:  CircularProgressIndicator.adaptive(
          strokeWidth: 2,
          constraints: BoxConstraints(
            maxWidth: 4,
            minWidth: 4,
            minHeight: 4,
            maxHeight: 4,
          ),),
      ),
    );
  }
}