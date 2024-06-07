import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakermarket/components/cart_item.dart';
import 'package:sneakermarket/models/cart.dart';
import 'package:sneakermarket/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My cart',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                Shoe individualShoe = value.getUserCart()[index];

                return CartItem(shoe: individualShoe);
              },
            ),
          ),
        ],
      ),
    );
  }
}
