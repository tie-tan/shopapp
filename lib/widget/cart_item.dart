import 'package:app_shop/model/CartProduct.dart';
import 'package:app_shop/widget/rupee_amount.dart';
import 'package:flutter/material.dart';

/// It displays the item details for the items in cart
/// User can increase and decrease the no. of item in cart
class CartItem extends StatefulWidget {
  const CartItem({
    Key? key,
    required this.product,
  }) : super(key: key);
  final CartProduct product;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: ListTileTheme(
        tileColor: Colors.grey.shade300,
        child: ExpansionTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              widget.product.imageUrl,
              fit: BoxFit.cover,
              width: 80,
              height: 80,
            ),
          ),
          subtitle: SizedBox(
            width: 200,
            child: Amount(
              amount: widget.product.quantity * widget.product.price,
              rupeeIconSize: 25,
              amountTextColor: Colors.black,
              rupeeIconColor: Colors.green,
              amountTextSize: 30,
            ),
          ),
          title: Text(
            widget.product.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: QuantityContainer(
                quantity: 1,
                product: widget.product,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// It displays the quantity of item in cart
/// User can increase and decrease the no. of item in cart
// ignore: must_be_immutable
class QuantityContainer extends StatefulWidget {
  QuantityContainer({
    Key? key,
    required quantity,
    required this.product,
  }) : super(key: key);
  int quantity = 1;
  final CartProduct product;

  @override
  State<QuantityContainer> createState() => _QuantityContainerState();
}

class _QuantityContainerState extends State<QuantityContainer> {
  @override
  Widget build(BuildContext context) {
    // var tt = Theme.of(context).textTheme;

    return Row(
      children: [
        const Text(
          'Quantity ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              if (widget.quantity > 0) {
                widget.quantity--;
              } else {
                widget.quantity = 0;
              }
            });
          },
          icon: const Icon(
            Icons.remove,
            color: Colors.black,
            size: 20,
          ),
        ),
        Text(
          widget.quantity.toString(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              widget.quantity++;
            });
          },
          icon: const Icon(
            Icons.add,
            color: Colors.black,
            size: 20,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 5.0,
          ),
          child: Icon(
            Icons.close,
            color: Colors.purple,
            size: 20,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 5.0),
          child: Amount(
            amount: widget.product.price,
            amountTextColor: Colors.black,
            rupeeIconColor: Colors.black,
            rupeeIconSize: 18,
            amountTextSize: 20,
          ),
        ),
      ],
    );
  }
}
