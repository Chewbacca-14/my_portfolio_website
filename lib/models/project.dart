class Project {
  final String name;
  final List<String> badges;
  final String description;
  final String? url;

  Project({
    required this.name,
    required this.badges,
    required this.description,
    this.url,
  });
}
