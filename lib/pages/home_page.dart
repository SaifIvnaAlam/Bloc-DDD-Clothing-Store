import 'package:clothing_store/pages/product_details_page.dart';
import 'package:clothing_store/util/app_style.dart';
import 'package:clothing_store/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../application/products_cubit/products_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    "All Items"
        "Dress"
        "Hat"
        "Watch"
  ];
  List<IconData> categoriesIcons = [
    FontAwesomeIcons.a,
    FontAwesomeIcons.section,
    FontAwesomeIcons.searchengin,
    FontAwesomeIcons.calculator
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    context.read<ProductsCubit>().getAllProducts();

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kPaddingHorizonatal),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Welcome 👋",
                      style: kEncodeSansRagular.copyWith(
                          color: kDarkBrown,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3),
                    ),
                    Text(
                      "Albert Stevano",
                      style: kEncodeSansBold.copyWith(
                          color: kDarkBrown,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3),
                    )
                  ],
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: kGrey,
                  backgroundImage: NetworkImage(
                      "https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kPaddingHorizonatal),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: kEncodeSansRagular.copyWith(
                        color: kDarkGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5),
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 13),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: kDarkGrey,
                        ),
                        hintText: "Search Clothes.....",
                        border: kInputBorder,
                        errorBorder: kInputBorder,
                        disabledBorder: kInputBorder,
                        focusedBorder: kInputBorder,
                        focusedErrorBorder: kInputBorder,
                        enabledBorder: kInputBorder,
                        hintStyle: kEncodeSansRagular.copyWith(
                            color: kDarkGrey,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5)),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 49,
                  width: 49,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: kblack),
                  child: const Icon(
                    FontAwesomeIcons.bars,
                    color: kWhite,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: double.infinity,
            height: 36,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      current == index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        left: index == 0 ? kPaddingHorizonatal : 15,
                        right: index == categories.length - 1
                            ? kPaddingHorizonatal
                            : 0),
                    padding:
                        const EdgeInsetsDirectional.symmetric(horizontal: 10),
                    height: 36,
                    decoration: BoxDecoration(
                        border: current == index
                            ? null
                            : Border.all(color: kLightGrey, width: 1),
                        borderRadius: BorderRadius.circular(8),
                        color: current == index ? kBrown : kWhite),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Icon(
                        //   current == index
                        //       ? categoriesIcons[index]
                        //       : categoriesIcons[index],
                        //   color: current == index ? kWhite : kDarkBrown,
                        // ),
                        // const SizedBox(
                        //   width: 4,
                        // ),
                        Text(
                          categories[index],
                          style: kEncodeSansMedium.copyWith(
                              color: current == index ? kWhite : kDarkBrown,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<ProductsCubit, ProductsState>(builder: (context, state) {
            return state.map(loading: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, error: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, loaded: (value) {
              final productList = value.produts;
              return MasonryGridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 36,
                itemCount: productList.length,
                padding: const EdgeInsets.symmetric(
                  horizontal: kPaddingHorizonatal,
                ),
                itemBuilder: (context, index) {
                  final product = productList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetailsPage(
                                  productId: product.id,
                                )),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                child: SizedBox(
                                    child: Image.network(
                                  product.image,
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                            Positioned(
                                right: 12,
                                top: 12,
                                child: GestureDetector(
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.favorite,
                                      color: kblack,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          product.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: kEncodeSansSemiBold.copyWith(
                              color: kDarkBrown,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3),
                        ),
                        Text(
                          product.category,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: kEncodeSansRagular.copyWith(
                              color: kGrey,
                              fontSize: SizeConfig.blockSizeHorizontal! * 2.5),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "\$212.99",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: kEncodeSansSemiBold.copyWith(
                                  color: kDarkBrown,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.5),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: kYellow,
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  product.rating!.rate.toString(),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: kEncodeSansRagular.copyWith(
                                      color: kDarkBrown,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            });
          })
        ],
      )),
    );
  }
}
