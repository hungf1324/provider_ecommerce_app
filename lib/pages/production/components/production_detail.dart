import 'package:flutter/material.dart';
import '../../../components/price_row.dart';
import '../../../models/product_model.dart';
import '../../../widgets/custom_text.dart';

class ProductionDetail extends StatelessWidget {
  const ProductionDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: product.name,
            fontWeight: FontWeight.bold,
            size: 20,
          ),
          const SizedBox(height: 20),
          buildStarBar(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PriceRow(
                saleOffPrice: product.saleOffPrice,
                originalPrice: product.originalPrice,
              ),
              const CustomText(
                text: 'Available in stock',
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          const SizedBox(height: 50),
          const CustomText(
            text: 'About',
            size: 18,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 20),
          CustomText(
            text: product.description,
          ),
        ],
      ),
    );
  }

  Row buildStarBar() {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
        const SizedBox(width: 30),
        const Text('(4500 Reviews)'),
      ],
    );
  }
}
