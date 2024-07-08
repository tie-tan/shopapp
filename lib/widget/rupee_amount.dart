import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  const Amount({
    Key? key,
    required this.amount,
    required this.rupeeIconSize,
    required this.amountTextColor,
    required this.rupeeIconColor,
    required this.amountTextSize,
  }) : super(key: key);
  final double amount;
  final double rupeeIconSize;
  final double amountTextSize;
  final Color? amountTextColor;
  final Color rupeeIconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/currency-inr.png',
          color: rupeeIconColor,
          width: rupeeIconSize,
          height: rupeeIconSize,
          scale: 0.5,
        ),
        Text(
          amount.toString(),
          style: TextStyle(
            color: amountTextColor,
            fontSize: amountTextSize,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
