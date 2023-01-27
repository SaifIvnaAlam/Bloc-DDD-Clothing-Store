import 'package:clothing_store/util/app_style.dart';
import 'package:clothing_store/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

import '../application/products_cubit/Product info cubit/product_info_cubit.dart';

class ProductDetailsPage extends StatelessWidget {
  final int productId;
  const ProductDetailsPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    context.read<ProductInfoCubit>().getProductsid(productId);
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 60,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          margin: const EdgeInsets.symmetric(horizontal: kPaddingHorizonatal),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: kDarkBrown),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                FontAwesomeIcons.cartArrowDown,
                color: Colors.white,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                " Add to cart",
                style: kEncodeSansBold.copyWith(color: Colors.white),
              ),
              SizedBox(
                child: Text(
                  " | ",
                  style: kEncodeSansBold.copyWith(color: Colors.white),
                ),
              ),
              Text(
                " \$50.00",
                style: kEncodeSansBold.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: kPaddingHorizonatal),
                child: Column(children: [
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 50,
                    child: Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child:
                                BlocBuilder<ProductInfoCubit, ProductInfoState>(
                                    builder: (context, state) {
                              return state.map(productLoading: (value) {
                                return Center(
                                  child: const CircularProgressIndicator(),
                                );
                              }, productError: (value) {
                                return Center(
                                  child: const CircularProgressIndicator(),
                                );
                              }, productLoaded: (value) {
                                var product = value.produtsbyId;
                                return Image.network(
                                    height: SizeConfig.blockSizeVertical! * 59,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    product.image);
                              });
                            })),

                        //           },
                        //         ),
                        //       ),
                        //       Align(
                        //         alignment: Alignment.topCenter,
                        //         child: Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 10, vertical: 10),
                        //           child: Row(
                        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //             children: [
                        //               Container(
                        //                 height: SizeConfig.blockSizeVertical! * 5,
                        //                 width: SizeConfig.blockSizeVertical! * 5,
                        //                 decoration: BoxDecoration(
                        //                   color: kWhite,
                        //                   shape: BoxShape.circle,
                        //                   boxShadow: [
                        //                     BoxShadow(
                        //                       color: kDarkBrown.withOpacity(0.80),
                        //                       spreadRadius: 0.0,
                        //                       blurRadius: 12,
                        //                       offset: const Offset(0, 5),
                        //                     )
                        //                   ],
                        //                 ),
                        //                 child: const Icon(Icons.arrow_back),
                        //               ),
                        //               Container(
                        //                 height: SizeConfig.blockSizeVertical! * 5,
                        //                 width: SizeConfig.blockSizeVertical! * 5,
                        //                 decoration: BoxDecoration(
                        //                   color: kWhite,
                        //                   shape: BoxShape.circle,
                        //                   boxShadow: [
                        //                     BoxShadow(
                        //                       color: kDarkBrown.withOpacity(0.80),
                        //                       spreadRadius: 0.0,
                        //                       blurRadius: 12,
                        //                       offset: const Offset(0, 5),
                        //                     )
                        //                   ],
                        //                 ),
                        //                 child: const Icon(Icons.favorite),
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 24,
                        // ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Modern Light clothing",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: kEncodeSansSemiBold.copyWith(
                                    color: kDarkBrown,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 7),
                              ),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: kWhite,
                                        border: Border.all(color: kblack),
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.remove,
                                      color: kGrey,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal! * 2.5,
                                ),
                                Text(
                                  "0",
                                  style: kEncodeSansBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 5,
                                      color: kDarkBrown),
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal! * 2.5,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: kWhite,
                                        border: Border.all(color: kblack),
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.add,
                                      color: kGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 18,
                              initialRating: 3.5,
                              minRating: 0.5,
                              direction: Axis.horizontal,
                              itemPadding: const EdgeInsets.all(2),
                              itemBuilder: (context, index) {
                                return const Icon(
                                  Icons.star,
                                  color: kYellow,
                                );
                              },
                              onRatingUpdate: (rating) {
                                debugPrint(rating.toString());
                              },
                              unratedColor: kLightGrey,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "5.0 ",
                                  style: kEncodeSansRagular.copyWith(
                                      color: kDarkBrown,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! *
                                              3.5),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "(7.932 reviews)",
                                      style: kEncodeSansRagular.copyWith(
                                          color: Colors.blue[300],
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  3.5),
                                    )
                                  ]),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        ReadMoreText(
                          "Productize churning anomalies data-point, or let's not solutionize this right now parking lot it, so to be inspired is to become creative, innovative and energized we want this philosophy to trickle down to all our stakeholders. Weaponize the data run it up the flag pole, yet back to the drawing-board, or we need to button up our approach. Incentivization pull in ten extra bodies to help roll the tortoise, or time to open the kimono, for synergize productive mindfulness, or start procrastinating 2 hours get to do work while",
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          delimiter: " ",
                          trimCollapsedText: "Read more...",
                          trimExpandedText: "Show less",
                          style: kEncodeSansRagular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            color: kDarkGrey,
                          ),
                          moreStyle: kEncodeSansBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kblack),
                          lessStyle: kEncodeSansBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kblack),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Divider(
                          height: 1,
                          color: kblack,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Choose size",
                                  style: kEncodeSansBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3.5,
                                      color: kDarkBrown),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                          height:
                                              SizeConfig.blockSizeHorizontal! *
                                                  6,
                                          width:
                                              SizeConfig.blockSizeHorizontal! *
                                                  6,
                                          decoration: BoxDecoration(
                                              color: kWhite,
                                              border: Border.all(
                                                  color: kblack, width: 1),
                                              shape: BoxShape.circle),
                                          child: Center(
                                              child: Text("S",
                                                  style:
                                                      kEncodeSansBold.copyWith(
                                                    fontSize: SizeConfig
                                                            .blockSizeHorizontal! *
                                                        3.5,
                                                    color: kDarkBrown,
                                                  )))),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                          height:
                                              SizeConfig.blockSizeHorizontal! *
                                                  6,
                                          width:
                                              SizeConfig.blockSizeHorizontal! *
                                                  6,
                                          decoration: BoxDecoration(
                                              color: kWhite,
                                              border: Border.all(color: kblack),
                                              shape: BoxShape.circle),
                                          child: Center(
                                              child: Text("M",
                                                  style:
                                                      kEncodeSansBold.copyWith(
                                                    fontSize: SizeConfig
                                                            .blockSizeHorizontal! *
                                                        3.5,
                                                    color: kDarkBrown,
                                                  )))),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                          height:
                                              SizeConfig.blockSizeHorizontal! *
                                                  6,
                                          width:
                                              SizeConfig.blockSizeHorizontal! *
                                                  6,
                                          decoration: BoxDecoration(
                                              color: kWhite,
                                              border: Border.all(color: kblack),
                                              shape: BoxShape.circle),
                                          child: Center(
                                              child: Text("L",
                                                  style:
                                                      kEncodeSansBold.copyWith(
                                                    fontSize: SizeConfig
                                                            .blockSizeHorizontal! *
                                                        3.5,
                                                    color: kDarkBrown,
                                                  )))),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                          height:
                                              SizeConfig.blockSizeHorizontal! *
                                                  6,
                                          width:
                                              SizeConfig.blockSizeHorizontal! *
                                                  6,
                                          decoration: BoxDecoration(
                                              color: kWhite,
                                              border: Border.all(color: kblack),
                                              shape: BoxShape.circle),
                                          child: Center(
                                              child: Text("XL",
                                                  style:
                                                      kEncodeSansBold.copyWith(
                                                    fontSize: SizeConfig
                                                            .blockSizeHorizontal! *
                                                        3.5,
                                                    color: kDarkBrown,
                                                  )))),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Colors",
                                  style: kEncodeSansBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3.5,
                                      color: kDarkBrown),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height:
                                            SizeConfig.blockSizeHorizontal! * 6,
                                        width:
                                            SizeConfig.blockSizeHorizontal! * 6,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            border: Border.all(
                                                color: kblack, width: 1),
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height:
                                            SizeConfig.blockSizeHorizontal! * 6,
                                        width:
                                            SizeConfig.blockSizeHorizontal! * 6,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            border: Border.all(
                                                color: kblack, width: 1),
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height:
                                            SizeConfig.blockSizeHorizontal! * 6,
                                        width:
                                            SizeConfig.blockSizeHorizontal! * 6,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            border: Border.all(
                                                color: kblack, width: 1),
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ]))));
  }
}
