import 'package:app_shop/model/Medicine.dart';
import 'package:app_shop/widget/custom_search_bar.dart';
import 'package:app_shop/widget/medicine_item_card.dart';
import 'package:flutter/material.dart';

import '../demo_data.dart';

class MedicineScreen extends StatelessWidget {
  static const routeName = '/medicine-screen';
  const MedicineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    List<Medicine> _medicines = Demo.medicines;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 20,
                    bottom: 10,
                  ),
                  child: const Icon(
                    Icons.medication,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 20,
                    bottom: 10,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Medicine",
                    style: textTheme.headline3,
                  ),
                ),
              ],
            ),
            const CustomSearchBar(searchHintText: 'Search Medicines'),
            Container(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 25,
                bottom: 10,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                "Available Medicines",
                style: textTheme.headline5,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10,
                ),
                itemCount: _medicines.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10,
                    ),
                    child: MedicineItemCard(product: _medicines[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
