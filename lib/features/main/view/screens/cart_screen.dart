import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/features/main/view/screens/product_details.dart';
import 'package:flutter/material.dart';

import '../../view_model/models/category_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int selectedIndex = 0;
  List<String> banners = [
    ImageAssetsManager.banner3,
    ImageAssetsManager.banner1,
    ImageAssetsManager.banner2,
  ];
  List<CategoryModel> categoriesData = [];
  List<CategoryModel> flashSaleCategory = [];
  List<CategoryModel> productsData = [];

  int categorySelected = 0;
  @override
  void initState() {
    categoriesData = [
      CategoryModel(
        id: 1,
        image: ImageAssetsManager.shirtImage,
        name: 'Skirt',
      ),
      CategoryModel(
        id: 2,
        image: ImageAssetsManager.pantImage,
        name: 'shirt',
      ),
      CategoryModel(
        id: 3,
        image: ImageAssetsManager.dressImage,
        name: 'Dress',
      ),
      CategoryModel(
        id: 4,
        image: ImageAssetsManager.jacketImage,
        name: 'plover ',
      ),
      CategoryModel(
        id: 5,
        image: ImageAssetsManager.swshirtImage,
        name: 'swtshirt ',
      ),
    ];
    flashSaleCategory = [
      CategoryModel(
        id: 1,
        image: '',
        name: 'All',
      ),
      CategoryModel(
        id: 2,
        image: '',
        name: 'Newest',
      ),
      CategoryModel(
        id: 3,
        image: '',
        name: 'Poular',
      ),
      CategoryModel(
        id: 4,
        image: '',
        name: 'Man',
      ),
      CategoryModel(
        id: 5,
        image: '',
        name: 'Woman',
      ),
    ];
    productsData = [
      CategoryModel(
        id: 1,
        image: ImageAssetsManager.jacketImage2,
        name: 'jacket',
      ),
      CategoryModel(
        id: 1,
        image: ImageAssetsManager.jacketImage1,
        name: 'T-Shirt',
      ),
      CategoryModel(
        id: 2,
        image: ImageAssetsManager.jacketImage1,
        name: 'skirt',
      ),
      CategoryModel(
        id: 3,
        image: ImageAssetsManager.jacketImage1,
        name: 'T-Shirt',
      ),
      CategoryModel(
        id: 4,
        image: ImageAssetsManager.jacketImage1,
        name: 'T-Shirt',
      ),

    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        margin: EdgeInsets.zero,
        padding: const EdgeInsets.only(
          top: 1,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: AppColors.grey.withOpacity(.4),
        ),
        child: Container(
          margin: EdgeInsets.zero,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width / 15,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    SizedBox(
                      height: screenSize.height * .05,
                      child: customTextFormField(
                        context,
                        hintText: 'Promo Code',
                        suffixIcon: Container(
                          margin: const EdgeInsets.all(4),
                          width: screenSize.width * .2,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Apply',
                              style: AppFonts.getTitleSmallFont(
                                context,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                fontColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    Row(
                      children: [
                        Text(
                          'Sub-Total',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.044,
                            color: Colors.black.withOpacity(.6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$200.0',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.044,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.005,
                    ),
                    Row(
                      children: [
                        Text(
                          'Delivery Fee',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.044,
                            color: Colors.black.withOpacity(.6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$50.0',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.044,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.005,
                    ),
                    Row(
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.044,
                            color: Colors.black.withOpacity(.6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '-\$50.0',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.044,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Text(
                          'Total Cost',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.044,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$200.0',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.044,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.checkoutScreen,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: screenSize.width - screenSize.width / 8,
                      height: screenSize.height / 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: AppColors.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Proceed to checkout',
                            style: AppFonts.getTitleSmallFont(
                              context,
                              fontColor: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * .12,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenSize.height * .02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'My Cart',
                style: AppFonts.getTitleMidFont(
                  context,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * .02,
            ),
            Expanded(
              child: ListView.separated(
                /* shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(), */
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                    right: screenSize.width * .04,
                    left: screenSize.width * .04,
                  ),
                  child: const CustomCartItem(),
                ),
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey.withOpacity(.3),
                ),
                itemCount: 2,
              ),
            ),
            SizedBox(
              height: screenSize.height * .4,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCartItem extends StatefulWidget {
  const CustomCartItem({super.key});

  @override
  State<CustomCartItem> createState() => _CustomCartItemState();
}

class _CustomCartItemState extends State<CustomCartItem> {
  int selectedIndex = 0;
  List<String> banners = [
    ImageAssetsManager.banner3,
    ImageAssetsManager.banner1,
    ImageAssetsManager.banner2,
  ];
  List<CategoryModel> categoriesData = [];
  List<CategoryModel> flashSaleCategory = [];
  List<CategoryModel> productsData = [];

  int categorySelected = 0;
  @override
  void initState() {
    categoriesData = [
      CategoryModel(
        id: 1,
        image: ImageAssetsManager.shirtImage,
        name: 'Skirt',
      ),
      CategoryModel(
        id: 2,
        image: ImageAssetsManager.pantImage,
        name: 'shirt',
      ),
      CategoryModel(
        id: 3,
        image: ImageAssetsManager.dressImage,
        name: 'Dress',
      ),
      CategoryModel(
        id: 4,
        image: ImageAssetsManager.jacketImage,
        name: 'plover ',
      ),
      CategoryModel(
        id: 5,
        image: ImageAssetsManager.swshirtImage,
        name: 'swtshirt ',
      ),
    ];
    flashSaleCategory = [
      CategoryModel(
        id: 1,
        image: '',
        name: 'All',
      ),
      CategoryModel(
        id: 2,
        image: '',
        name: 'Newest',
      ),
      CategoryModel(
        id: 3,
        image: '',
        name: 'Poular',
      ),
      CategoryModel(
        id: 4,
        image: '',
        name: 'Man',
      ),
      CategoryModel(
        id: 5,
        image: '',
        name: 'Woman',
      ),
    ];
    productsData = [
      CategoryModel(
        id: 1,
        image: ImageAssetsManager.jacketImage2,
        name: 'jacket',
      ),
      CategoryModel(
        id: 1,
        image: ImageAssetsManager.jacketImage1,
        name: 'T-Shirt',
      ),
      CategoryModel(
        id: 2,
        image: ImageAssetsManager.jacketImage1,
        name: 'skirt',
      ),
      CategoryModel(
        id: 3,
        image: ImageAssetsManager.jacketImage1,
        name: 'T-Shirt',
      ),
      CategoryModel(
        id: 4,
        image: ImageAssetsManager.jacketImage1,
        name: 'T-Shirt',
      ),

    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return Column(

      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [



        SizedBox(
          width: screenSize.width * .03,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            ImageAssetsManager.jacketImage2,
            // productsData[index].image,
            width: screenSize.width * .25,
            height: screenSize.width * .25,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Brown Jacket',
              style: AppFonts.getTitleSmallFont(
                context,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: screenSize.width / 1.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Size : XL',
                        style: AppFonts.getCaptionFont(context),
                      ),
                      Text(
                        '\$89.99',
                        style: AppFonts.getTitleSmallFont(
                          context,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                              size: screenSize.width * 0.04,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenSize.width * 0.05,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: screenSize.width * 0.04,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: screenSize.width * .03,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            ImageAssetsManager.jacketImage1,
            // productsData[index].image,
            width: screenSize.width * .25,
            height: screenSize.width * .25,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Brown Jacket',
              style: AppFonts.getTitleSmallFont(
                context,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: screenSize.width / 1.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Size : XL',
                        style: AppFonts.getCaptionFont(context),
                      ),
                      Text(
                        '\$89.99',
                        style: AppFonts.getTitleSmallFont(
                          context,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                              size: screenSize.width * 0.04,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenSize.width * 0.05,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: screenSize.width * 0.04,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
