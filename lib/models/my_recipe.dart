import 'recipe.dart';
import 'package:meal_plan_app/utils/consts.dart';
class MyRecipe {
  List<Recipe> recipeList = [
    Recipe(
        id: 1,
        name: 'Sheepherder’s Breakfast',
        category: 'break fast',
        description:
            'My sister-in-law always made this delicious breakfast dish when we were camping and had to come up with good, easy breakfast ideas. Served with toast, juice and milk or coffee, its a sure hit with the breakfast crowd! One-dish casseroles like this were a big help while I was raising my nine children. Now ve passed this recipe on to them. —Pauletta Bushnell, Albany, Oregon',
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        image: imgsheephderBreakfast),
    Recipe(
        id: 2,
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        category: 'break fast',
        name: 'Cheesy Grits with Fried Eggs and Bacon',
        description:
            "Cheesy grits topped with a jammy fried egg, burst tomatoes, avocado, and crumbled bacon.",
        image: imgcheesyGritFired),
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped /n medium onion, chopped /n package (30 ounces) frozen shredded hash brown potatoes, thawed /narge eggs /n1/2 teaspoon salt /n1/4 teaspoon pepper /n1 cup shredded cheddar cheese",
        id: 3,
        category: 'Dinner recipes',
        name: 'SHAKSHUKA RECIPE (EASY & TRADITIONAL):',
        description:
            "Shakshuka is a North African and Middle Eastern meal of poached eggs in a simmering tomato sauce with spices. It's easy, healthy and takes less than 30 minutes to make. Watch the video above to see how quickly it comes together!",
        image: imgShakshukaRecipe),
    Recipe(
        ingredient:
            "3/4 pound bacon strips, finely chopped /n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 4,
        category: 'Lunch recipes',
        name: 'great crêpes.',
        description:
            'It’s delicious, too. I love this version with zucchini cooked with garlic and butter. You only need five minutes of cooking time, and it’s time to eat!',
        image: imggreatCrepesRecipe),
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 5,
        category: 'Dinner recipes',
        name: 'Garlic Butter Sauteed Zucchini',
        description:
            'It’s delicious, too. I love this version with zucchini cooked with garlic and butter. You only need five minutes of cooking time, and it’s time to eat!',
        image: imgGarlicButter),
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 6,
        category: 'Dinner recipes',
        name: 'Easy Lasagna Recipe',
        description:
            ' butter. You only need five minutes of cooking time, and it’s time to eat!',
        image: imglasagna),
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 7,
        category: 'Lunch recipes',
        name: 'GARLIC BUTTER CHICKEN',
        description:
            'It’s delicious, ini cooked with garlic and butter. You only need five minutes of cooking time, and it’s time to eat!',
        image: imggarlicButterSauteed),
  ];
  List<Recipe> breakfast = [
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 1,
        category: 'break fast',
        name: 'Cheesy Grits with Fried Eggs and Bacon',
        description:
            "Cheesy grits topped with a jammy fried egg, burst tomatoes, avocado, and crumbled bacon.",
        image: imgcheesyGritFired),
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 2,
        category: 'break fast',
        name: 'GARLIC BUTTER CHICKEN',
        description:
            'It’s delicious, ini cooked with garlic and butter. You only need five minutes of cooking time, and it’s time to eat!',
        image: imggarlicButterSauteed),
  ];
  List<Recipe> dinnerRecipe = [
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 1,
        category: 'Dinner recipes',
        name: 'SHAKSHUKA RECIPE (EASY & TRADITIONAL):',
        description:
            "Shakshuka is a North African and Middle Eastern meal of poached eggs in a simmering tomato sauce with spices. It's easy, healthy and takes less than 30 minutes to make. Watch the video above to see how quickly it comes together!",
        image: imgShakshukaRecipe),
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 2,
        category: 'Dinner recipes',
        name: 'Garlic Butter Sauteed Zucchini',
        description:
            'It’s delicious, too. I love this version with zucchini cooked with garlic and butter. You only need five minutes of cooking time, and it’s time to eat!',
        image: imgGarlicButter),
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 3,
        category: 'Dinner recipes',
        name: 'Easy Lasagna Recipe',
        description:
            ' butter. You only need five minutes of cooking time, and it’s time to eat!',
        image: imglasagna),
  ];
  List<Recipe> lunchrecipes = [
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 1,
        category: 'Lunch recipes',
        name: 'great crêpes.',
        description:
            'It’s delicious, too. I love this version with zucchini cooked with garlic and butter. You only need five minutes of cooking time, and it’s time to eat!',
        image: imggreatCrepesRecipe),
    Recipe(
        ingredient:
            "34 pound bacon strips, finely chopped \n medium onion, chopped \n package (30 ounces) frozen shredded hash brown potatoes, thawed \narge eggs \n12 teaspoon salt \n14 teaspoon pepper \n1 cup shredded cheddar cheese",
        id: 2,
        category: 'Lunch recipes',
        name: 'GARLIC BUTTER CHICKEN',
        description:
            'It’s delicious, ini cooked with garlic and butter. You only need five minutes of cooking time, and it’s time to eat!',
        image: imggarlicButterSauteed),
  ];
}
