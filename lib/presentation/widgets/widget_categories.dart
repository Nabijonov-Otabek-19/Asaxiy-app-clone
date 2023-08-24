import 'package:asaxiy_clone/theme/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../data/model/models.dart';

class WidgetCategories extends StatefulWidget {
  final List<MenuModel> list;
  final Function(String category) onTap;

  const WidgetCategories({super.key, required this.list, required this.onTap});

  @override
  State<WidgetCategories> createState() => _WidgetCategoriesState();
}

class _WidgetCategoriesState extends State<WidgetCategories> {
  final _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: GridView.builder(
          controller: _controller,
          shrinkWrap: true,
          dragStartBehavior: DragStartBehavior.down,
          clipBehavior: Clip.hardEdge,
          itemCount: 8,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            mainAxisExtent: 100,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          itemBuilder: (context, index) {
            final data = widget.list[index];
            return GridTile(
              child: GestureDetector(
                onTap: widget.onTap(data.title),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 4, // 4
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          width: 57,
                          height: 57,
                          color: data.color,
                          child: Image.asset(
                            data.icon,
                            color: data.tintColor != 0 ? data.tintColor : null,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      data.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: gray,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
