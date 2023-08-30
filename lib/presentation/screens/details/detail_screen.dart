import 'package:asaxiy_clone/data/model/models.dart';
import 'package:asaxiy_clone/presentation/screens/details/bloc/details_bloc.dart';
import 'package:asaxiy_clone/presentation/widgets/widget_detail_img_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme/colors.dart';

class DetailsScreen extends StatefulWidget {
  final ProductModel model;

  const DetailsScreen({super.key, required this.model});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final _bloc = DetailsBloc();

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                widget.model.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(fontSize: 20),
              ),
              actions: const [
                Icon(Icons.favorite_border_outlined),
                SizedBox(width: 8),
                Icon(Icons.share_outlined),
                SizedBox(width: 8),
              ],
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              width: double.infinity,
              height: double.infinity,
              color: background,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    widgetDetailImageSlider(
                        widget.model.images,
                        100,
                        100,
                        (index) =>
                            _bloc.add(DetailsEvent.changeDotIndex(index)),
                        state.activeIndex),
                    const SizedBox(height: 14),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.model.title,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: ListView.builder(
                              padding: const EdgeInsets.all(4),
                              shrinkWrap: true,
                              itemCount: widget.model.stars,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Holati : ${widget.model.state}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.amber,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "${widget.model.price} so'm",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Mahsulot ta'rifi",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down),
                              ]),
                          const SizedBox(height: 8),
                          Text(
                            widget.model.description,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Row(
                  children: [
                    IconButton(
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                            Colors.lightBlueAccent),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      visualDensity: VisualDensity.comfortable,
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: gray,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            visualDensity: VisualDensity.comfortable,
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.amber),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Muddatli to'lov",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            visualDensity: VisualDensity.comfortable,
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.blue),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            textAlign: TextAlign.center,
                            "Buyurtma qilish",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
