import 'package:meal_plan_app/models/recipe.dart';
import 'package:meal_plan_app/utils/consts.dart';

class CardProvider with ChangeNotifier {
  final List<Recipe> _cardlist = [];
  List<Recipe> get cardlist => _cardlist;

  void toggeleCardRecipe(Recipe product) {
    if (_cardlist.contains(product)) {
      _cardlist.remove(product);
      
    } else {
      _cardlist.add(product);
    }
    notifyListeners();
  }



}
