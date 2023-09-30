import 'package:meal_plan_app/utils/consts.dart';
import 'package:provider/provider.dart';

import '../models/my_recipe.dart';
import '../providers/favourite_provider.dart';
import 'detail_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Favourites | Recipes List",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(child: Consumer<FavouriteProvider>(
            builder: (context, favouriteList, child) {
          return ListView.builder(
              itemCount: favouriteList.favourites.length,
              itemBuilder: (contect, index) {
                     final product = MyRecipe().recipeList[index];
                return ListTile(
                  onTap: (){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(recipe: product,)),
            );
                  },
                  title: Text(
                    favouriteList.favourites[index].name,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    favouriteList.favourites[index].description,
                    overflow: TextOverflow.ellipsis,
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage(favouriteList.favourites[index].image),
                  ),
                );
              });
        }))
      ]),
    );
  }
}
