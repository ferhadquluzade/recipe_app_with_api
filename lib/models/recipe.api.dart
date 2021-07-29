import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipe_app_with_api/models/recipe.dart';
// "method": "GET",
// 	"hostname": "yummly2.p.rapidapi.com",
// 	"port": null,
// 	"path": "/feeds/list?start=0&limit=18&tag=list.recipe.popular",
// 	"headers": {
// 		"x-rapidapi-key": "64db6639eamsh3660ca854cdb8bap143de9jsnb3d641b140d7",
// 		"x-rapidapi-host": "yummly2.p.rapidapi.com",
// 		"useQueryString": true
// 	}
class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "64db6639eamsh3660ca854cdb8bap143de9jsnb3d641b140d7",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var data in data['feed']) {
      _temp.add(data['content']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}