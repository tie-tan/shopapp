import 'package:app_shop/demo_data.dart';
import 'package:app_shop/model/CartProduct.dart';
import 'package:app_shop/model/Product.dart';
import 'package:app_shop/widget/cart_item.dart';
import 'package:app_shop/widget/rupee_amount.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart-screen';
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartProduct> cartItem = Demo().cartProduct;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'My Cart',
          style: textTheme.headline4,
        ),
      ),
      body: LiquidPullToRefresh(
        springAnimationDurationInMilliseconds: 200,
        backgroundColor: Colors.purple,
        showChildOpacityTransition: false,
        color: Colors.white,
        animSpeedFactor: 1.3,
        height: 60,
        onRefresh: () {
          return Future.delayed(
            const Duration(milliseconds: 700),
          );
        },
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Dismissible(
                key: Key(cartItem[index].id),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.redAccent,
                  child: Container(
                    padding: const EdgeInsets.only(right: 20.0),
                    alignment: Alignment.centerRight,
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
                onDismissed: (direction) {
                  if (direction == DismissDirection.endToStart) {
                    setState(() {
                      cartItem.removeAt(index);
                    });
                  }
                },
                child: CartItem(
                  product: cartItem[index],
                ),
              ),
            );
          },
          itemCount: cartItem.length,
        ),
      ),
      bottomNavigationBar: _cartScreenBottomAppBar(context, textTheme),
    );
  }
}

Widget _cartScreenBottomAppBar(BuildContext context, TextTheme textTheme) {
  return Material(
    elevation: 10,
    shadowColor: Colors.white,
    child: Container(
      height: 65,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(35, 31, 32, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: 40,
              width: 143,
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: const [
                  Text(
                    'Total :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Amount(
                    amount: 500,
                    rupeeIconSize: 22,
                    amountTextColor: Colors.black,
                    rupeeIconColor: Colors.green,
                    amountTextSize: 20,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 250,
            height: 45,
            padding: const EdgeInsets.only(
              right: 8.0,
              bottom: 3,
            ),
            child: MaterialButton(
              height: 40,
              color: Colors.purple.shade500,
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(
                      SnackBar(
                        content: Text(
                          'Order Placed',
                          style: textTheme.bodyText2,
                        ),
                        duration: const Duration(milliseconds: 700),
                      ),
                    )
                    .closed
                    .then(
                      (value) => Navigator.of(context).pop(),
                    );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.shopping_bag_sharp,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'PLACE ORDER',
                      style: textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
