import 'package:meal_plan_app/models/recipe.dart';
import 'package:meal_plan_app/providers/plan_provider.dart';
import 'package:meal_plan_app/screens/plan_screen.dart';
import 'package:meal_plan_app/screens/select_day.dart';
import 'package:meal_plan_app/utils/consts.dart';
import 'package:provider/provider.dart';


class DetailScreen extends StatelessWidget {
  final Recipe recipe;
  const DetailScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detail Screen Recipe"),
      ),
      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 350,
            width: 350,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black54),
            child: Image.asset(
              recipe.image,
              fit: BoxFit.cover,
            ),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.name,
                      style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      recipe.description,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Ingredients",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      recipe.ingredient,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Creaet a Week Plan Select Day",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        SelectedDay(day: 'Monday'),
                        SelectedDay(day: 'Tuesday'),
                        SelectedDay(day: 'Wednesday'),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [
                        SelectedDay(day: 'Thurday'),
                        SelectedDay(day: 'Friday'),
                        SelectedDay(day: 'Satursday'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BottomAppBar(
                      child: Container(
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Consumer<CardProvider>(
                            builder: (context, provider, child) {
                          return ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                              onPressed: () {
                                provider.toggeleCardRecipe(recipe);
                                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PlanScreen()),
            );
                              },
                              icon: const Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.white,
                              ),
                              label: const Text(
                                'Add to Week Plan List',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ));
                        }),
                      ),
                    )
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}
