class Project {
  final String name;
  final List<String> badges;
  final String description;
  final String? url;
  final List<String>? assets;

  Project({
    required this.name,
    required this.badges,
    required this.description,
    required this.assets,
    this.url,
  });
}
