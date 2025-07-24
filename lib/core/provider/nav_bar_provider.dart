import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../route/route_enum.dart';

final navBarProvider = StateProvider<int>((ref) {
  return RouteEnum.home.index;
});
