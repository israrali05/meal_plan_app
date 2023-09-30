import 'package:meal_plan_app/utils/consts.dart';

class SelectedDay extends StatefulWidget {
  final String day;
  const SelectedDay({super.key, required this.day});

  @override
  State<SelectedDay> createState() => _SelectedDayState();
}

class _SelectedDayState extends State<SelectedDay> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 90,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isSelected ? Colors.red : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.red)),
        child: Text(
          widget.day,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
