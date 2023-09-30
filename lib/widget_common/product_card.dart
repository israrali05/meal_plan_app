import 'package:meal_plan_app/models/recipe.dart';
import 'package:meal_plan_app/providers/favourite_provider.dart';
import 'package:meal_plan_app/utils/consts.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
  final Recipe recipe;
  const ProductCard({super.key, required this.recipe});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Consumer<FavouriteProvider>(builder: (context, favourite, child) {
                return GestureDetector(
                  onTap: () {
                    favourite.toggeleFavourite(widget.recipe);
                  },
                  child: Icon(
                    favourite.isExit(widget.recipe)? Icons.favorite
                    :Icons.favorite_border_outlined,
                    color: Colors.black,
                  ),
                );
              })
            ],
          ),
          SizedBox(
            height: 120,
            width: 130,
            child: Image.asset(
              widget.recipe.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.recipe.name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.recipe.category,
            style: const TextStyle(
                fontSize: 18, color: Colors.red, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
