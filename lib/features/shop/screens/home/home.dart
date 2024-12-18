// https://www.youtube.com/watch?v=XIHqtsySypw&list=PL5jb9EteFAOA3tCKoanOSEJaIDYn1Z5LC&index=7
// start
import 'package:flutter/material.dart';
import 'package:t_store/commons/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/commons/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/commons/widgets/layouts/grid_layout.dart';
import 'package:t_store/commons/widgets/products/products_cards/product_card_vertical.dart';
import 'package:t_store/commons/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Search Bar
                  const TSearchContainer(
                    text: 'Search in Store',
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        // Categories
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Body
           Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // promo slider
                const TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner1,TImages.promoBanner1],),
                const SizedBox(height: TSizes.spaceBtwItems),


                // Popular products
                TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
                

              ],
            ), 
          ), 

          ],
        ),
      ),
    );
  }
}



