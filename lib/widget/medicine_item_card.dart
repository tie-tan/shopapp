import 'package:app_shop/model/Medicine.dart';
import 'package:flutter/material.dart';

class MedicineItemCard extends StatelessWidget {
  final Medicine product;
  const MedicineItemCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (_) => ProductDetailScreen(product),
                  //   ),
                  // );
                },
                child: Hero(
                  tag: product.id,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                    width: 150,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            product.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/currency-inr.png',
                color: Colors.black,
                height: 22,
                width: 22,
              ),
              Text(
                "${product.price}/-",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
