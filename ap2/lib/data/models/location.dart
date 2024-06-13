class Location{
  final String name;
  final String type;
  final String dimension;

  Location({
    required this.name,
    required this.type,
    required this.dimension,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      type: json['type'],
      dimension: json['dimension'],
    );
  }
}