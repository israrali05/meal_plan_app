import 'package:meal_plan_app/utils/consts.dart';
import 'package:provider/provider.dart';

import '../models/my_recipe.dart';
import '../providers/plan_provider.dart';
import 'detail_screen.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Weekly Plan | Recipes List",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(child: Consumer<CardProvider>(
            builder: (context, favouriteList, child) {
          return ListView.builder(
              itemCount: favouriteList.cardlist.length,
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
                    favouriteList.cardlist[index].name,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    favouriteList.cardlist[index].description,
                    overflow: TextOverflow.ellipsis,
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage(favouriteList.cardlist[index].image),
                  ),
                );
              });
        }))
      ]),
    );
  }
}
