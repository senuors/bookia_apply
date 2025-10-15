import 'package:bookia_apply/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../data/model/BestSellerResponse.dart';
import 'book_card.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key, this.products});
  final List<Products>? products;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Best Seller", style: TextStyles.textStyle24),
        Gap(10),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: products?.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 275,
          ),
          itemBuilder: (context, index) {
            return BookCard(products: products![index]);
          },
        ),
      ],
    );
  }
}
