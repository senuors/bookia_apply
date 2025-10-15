import 'package:bookia_apply/features/home/data/model/BestSellerResponse.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widgets/main_button.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.products});
  final Products products;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 289,
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              products.image ?? "",
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),

          Gap(10),
          Expanded(
            child: Text(
              products.name ?? "",
              style: TextStyles.textStyle18,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${products.price}",
                style: TextStyles.textStyle14.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Main_Button(
                width: 75,
                height: 27,
                bgColor: AppColors.darkColor,
                text: 'Buy',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
