import 'package:meal_plan_app/models/recipe.dart';
import 'package:meal_plan_app/utils/consts.dart';

class FavouriteProvider with ChangeNotifier {
  final List<Recipe> _favourites = [];
  List<Recipe> get favourites => _favourites;

  void toggeleFavourite(Recipe product) {
    if (_favourites.contains(product)) {
      _favourites.remove(product);
      
    } else {
      _favourites.add(product);
    }
    notifyListeners();
  }

  bool isExit(Recipe product) {
    final exits = _favourites.contains(product);
    return exits;
  }

}
