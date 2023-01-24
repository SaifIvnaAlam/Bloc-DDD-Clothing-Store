import 'package:clothing_store/util/app_style.dart';
import 'package:clothing_store/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    FontAwesomeIcons.accusoft,
    FontAwesomeIcons.addressBook,
    FontAwesomeIcons.addressCard
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                  onTap: () {},
                  child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                        border: current == index
                            ? null
                            : Border.all(color: kLightGrey, width: 1),
                        borderRadius: BorderRadius.circular(8),
                        color: current == index ? kBrown : kWhite),
                    child: Row(
                      children: [
                        Icon(
                          categoriesIcons[index],
                          color: current == index ? kWhite : kblack,
                        ),
                        Text(categories[index])
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
