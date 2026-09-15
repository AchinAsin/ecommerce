import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'widgets/base_product_details.dart';
import 'widgets/description.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  int currentIndex = 0;

  final List<IconData> icons = [
    Icons.shopping_cart,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.favorite,
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              

              CarouselSlider.builder(
                itemCount: icons.length ,
                carouselController: _carouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() => currentIndex = index);
                  },
                ),
                itemBuilder:(context, index, realIndex) {
                  return Card(
                    child: Icon(
                       icons[index],
                       size: 40,
                    ),
                  );
                },
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: imgList!.asMap().entries.map((entry) {
              //     return GestureDetector(
              //       onTap: () => _controller.animateToPage(entry.key),
              //       child: Container(
              //         width: 12.0,
              //         height: 12.0,
              //         margin: EdgeInsets.symmetric(
              //           vertical: 8.0,
              //           horizontal: 4.0,
              //         ),
              //         decoration: BoxDecoration(
              //           shape: BoxShape.circle,
              //           color:
              //               (Theme.of(context).brightness == Brightness.dark
              //                       ? Colors.white
              //                       : Colors.black)
              //                   .withValues(
              //                     alpha: _current == entry.key ? 0.9 : 0.4,
              //                   ),
              //         ),
              //       ),
              //     );
              //   }).toList(),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate( 
                  icons.length,
                  (index) => Container(
                    width: 10,
                    height: 10,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index ? Colors.black : Colors.black54
                    ) ,
                  )

                )),
              SizedBox(height: 20.0),
              BaseProductDetail(),
              SizedBox(height: 20.0),
              Description(),
              FFButton
            ],
          ),
        ),
      ),
    );
  }
}
