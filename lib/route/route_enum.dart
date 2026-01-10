enum RouteEnum {
  home(path: '/', name: 'home'),
  resume(path: '/resume', name: 'resume'),
  work(path: '/work', name: 'work'),
  contact(path: '/contact', name: 'contact');

  const RouteEnum({required this.path, required this.name});
  final String path;
  final String name;
}
