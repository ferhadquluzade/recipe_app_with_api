class Recipe {
  final String name;
  final String images;
  final double rating;
  final String totalTime;
  // final String vdioUrl;
  final String cont;
  // final String snapshotUrl;

  Recipe({
    required this.name,
    required this.images,
    required this.rating,
    required this.totalTime,
    // required this.vdioUrl,
    required this.cont,
    // required this.snapshotUrl
  });

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
        name: json['details']['name'],
        images: json['details']['images'][0]['hostedLargeUrl'],
        rating: json['details']['rating'],
        totalTime: json['details']['totalTime'],
        // vdioUrl: json['videos']['originalVideoUrl'],
        cont: json['description']['text'],
        // snapshotUrl: json['videos']['snapshotUrl']
    );
    
  }
//list of recipes instances with name,images and so on
  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
    
  }

  @override
  String toString() {
    return 'Recipe {name: $name, image: $images, rating: $rating, totalTime: $totalTime,cont:$cont}';
  }
}
