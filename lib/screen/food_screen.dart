import 'package:app_shop/demo_data.dart';
import 'package:app_shop/model/Shop.dart';
import 'package:app_shop/widget/custom_search_bar.dart';
import 'package:app_shop/widget/shop_item.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class FoodScreen extends StatelessWidget {
  static const routeName = '/food-screen';
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Shop> _shopItem = Demo.shops;
    var textTheme = Theme.of(context).textTheme;
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
                    Icons.fastfood,
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
                    "Food",
                    style: textTheme.headline3,
                  ),
                ),
              ],
            ),
            const CustomSearchBar(
              searchHintText: 'Search Food',
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 25,
                bottom: 10,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                "Available Food Stores",
                style: textTheme.headline5,
              ),
            ),
            Expanded(
              child: LiquidPullToRefresh(
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
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 4.0,
                          left: 4,
                          right: 4,
                          bottom: 4,
                        ),
                        child: ShopItem(shop: _shopItem[index]),
                      ),
                    );
                  },
                  itemCount: _shopItem.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
