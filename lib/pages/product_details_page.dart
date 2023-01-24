import 'package:clothing_store/util/app_style.dart';
import 'package:clothing_store/util/counter.dart';
import 'package:clothing_store/util/size_config.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final Counter counter = Counter();

    void increamentCounter() {
      setState(() {
        counter.increment();
      });
    }

    void decreamentCounter() {
      setState(() {
        counter.decrement();
      });
    }

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizonatal),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 60,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image(
                      height: SizeConfig.blockSizeVertical! * 59,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://image.made-in-china.com/155f0j00zyIWpbCaJUuM/Adult-Women-Sex-Costume-Sexy-Clothing-European-and-American-Deep-V-Sexy-Suspender-Dress-Female-Ins-New-Pleated-Slim-Slimming-Irregular-Skirt-Sex-Clothes.jpg",
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical! * 5,
                            width: SizeConfig.blockSizeVertical! * 5,
                            decoration: BoxDecoration(
                              color: kWhite,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: kDarkBrown.withOpacity(0.80),
                                  spreadRadius: 0.0,
                                  blurRadius: 12,
                                  offset: const Offset(0, 5),
                                )
                              ],
                            ),
                            child: const Icon(Icons.arrow_back),
                          ),
                          Container(
                            height: SizeConfig.blockSizeVertical! * 5,
                            width: SizeConfig.blockSizeVertical! * 5,
                            decoration: BoxDecoration(
                              color: kWhite,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: kDarkBrown.withOpacity(0.80),
                                  spreadRadius: 0.0,
                                  blurRadius: 12,
                                  offset: const Offset(0, 5),
                                )
                              ],
                            ),
                            child: const Icon(Icons.favorite),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Modern Light clothing",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: kEncodeSansSemiBold.copyWith(
                        color: kDarkBrown,
                        fontSize: SizeConfig.blockSizeHorizontal! * 7),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: decreamentCounter,
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
                      counter.value.toString(),
                      style: kEncodeSansBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          color: kDarkBrown),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 2.5,
                    ),
                    GestureDetector(
                      onTap: increamentCounter,
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
                const SizedBox()
              ],
            )
          ],
        ),
      )),
    );
  }
}
