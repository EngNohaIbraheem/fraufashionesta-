import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_navigator_button.dart';
import 'package:ecommerce_app/features/main/view/screens/home_screen.dart';
import 'package:ecommerce_app/features/main/view_model/models/category_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/manager/assets_manager.dart';
import '../../../../core/styles/app_colors.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({
    super.key,
    required this.categoryData, required CategoryModel productData,
  });
  CategoryModel categoryData;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              right: screenSize.width * .04,
              left: screenSize.width * .04,
              top: screenSize.height * .02,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    customNavigatorButton(context),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          categoryData.name,
                          style: AppFonts.getTitleMidFont(
                            context,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * .08,
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .03,
                ),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisSpacing: 15,
                  childAspectRatio: .89 / 1.1,
                  crossAxisCount: 2,
                  mainAxisSpacing: MediaQuery.of(context).size.height / 90,
                  children: List.generate(10, (i) {
                    return InkWell(
                      onTap: () {},
                      child: const CustomProductItemnew(),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class CustomProductItemnew extends StatelessWidget {
  const CustomProductItemnew({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                ImageAssetsManager.dressImage,
                width: double.infinity,
                height: screenSize.width * .4,
                fit: BoxFit.fill,
              ),
            ),




            IconButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    AppColors.primaryLight.withOpacity(.6),
                  )),
              onPressed: () {},
              icon: Image.asset(

                IconAssetsManager.favoriteOutLinedIcon,
                width: screenSize.width * .05,
                height: screenSize.width * .05,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenSize.width * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: screenSize.width * .3,
              child: Text(
                'Brown skirt',
                maxLines: 1,
                style: AppFonts.getTitleSmallFont(
                  context,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star_rounded,
                  color: Colors.amber,
                  size: screenSize.width * .05,
                ),
                Text(
                  '4.9',
                  style: AppFonts.getCaptionFont(
                    context,
                  ),
                ),
              ],
            ),
          ],
        ),
        /*  SizedBox(
          height: screenSize.width * 0.01,
        ), */
        Text(
          '\$99.99',
          style: AppFonts.getTitleSmallFont(
            context,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
