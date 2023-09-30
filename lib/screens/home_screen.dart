import 'package:meal_plan_app/models/my_recipe.dart';
import 'package:meal_plan_app/screens/detail_screen.dart';
import 'package:meal_plan_app/utils/consts.dart';
import 'package:meal_plan_app/widget_common/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Our Recipes',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProductCategory(index: 0, name: "All Recipes"),
                _buildProductCategory(index: 1, name: "Breakfast recipes"),
                _buildProductCategory(index: 2, name: "Lunch recipes."),
                _buildProductCategory(index: 3, name: "Dinner recipes."),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: isSelected == 0
                  ? _buildAllProducts()
                  : isSelected == 1
                      ? _buildBreakFast()
                      : isSelected == 3
                          ? _buildDinner()
                          : _buildlunch())
        ]),
      ),
    );
  }

  _buildProductCategory({required int index, required String name}) =>
      GestureDetector(
        onTap: () {
          setState(() {
            isSelected = index;
          });
        },
        child: Container(
          width: 130,
          height: 40,
          margin: const EdgeInsets.only(top: 10, right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isSelected == index ? Colors.black : Colors.black45,
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );

  _buildAllProducts() => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 170),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12),
      itemCount: MyRecipe().recipeList.length,
      itemBuilder: (context, index) {
        final product = MyRecipe().recipeList[index];
        return GestureDetector(
          onTap: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(recipe: product,)),
            );
          },
          child: ProductCard(recipe: product));
      });

  _buildBreakFast() => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 170),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12),
      itemCount: MyRecipe().breakfast.length,
      itemBuilder: (context, index) {
        final product = MyRecipe().breakfast[index];
        return GestureDetector(
              onTap: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(recipe: product,)),
            );
          },
          child: ProductCard(recipe: product));
      });
  _buildlunch() => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 170),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12),
      itemCount: MyRecipe().lunchrecipes.length,
      itemBuilder: (context, index) {
        final product = MyRecipe().lunchrecipes[index];
        return GestureDetector(      onTap: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(recipe: product,)),
            );
          },child: ProductCard(recipe: product));
      });
  _buildDinner() => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 170),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12),
      itemCount: MyRecipe().dinnerRecipe.length,
      itemBuilder: (context, index) {
        final product = MyRecipe().dinnerRecipe[index];
        return GestureDetector(      onTap: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(recipe: product,)),
            );
          },child: ProductCard(recipe: product));
      });
}
