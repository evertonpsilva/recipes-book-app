import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_book/core/routes/routes.dart';
import 'package:recipes_book/modules/home/controllers/categories_controller.dart';
import 'package:simple_shadow/simple_shadow.dart';

extension LoopList<T> on List {
  T loop(int index) => this[index % this.length];
}

class Category{
  String url;
  String name;
  Color color;
  Category({
    required this.url,
    required this.name,
    required this.color,
  });
}

class CategoriesList extends StatelessWidget {

  static List<Category> _categories = [
    new Category(url: "assets/images/categories/asiatic.png", name: "Asiatic", color: Color(0xFFbed843)),
    new Category(url: "assets/images/categories/brazilian.png", name: "Brazilian", color: Color(0xFF3c2b28)),
    new Category(url: "assets/images/categories/burger.png", name: "Burger", color: Color(0xFFf1c170)),
    new Category(url: "assets/images/categories/cake.png", name: "Cake", color: Color(0xFFe39ec4)),
    new Category(url: "assets/images/categories/pasta.png", name: "Pasta", color: Color(0xFFe25616)),
  ];

  final controller = Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: Obx((){
        return PageView.builder(
          controller: PageController(
            initialPage: controller.index.value,
            viewportFraction: 0.5,
            keepPage: true
          ),
          onPageChanged: controller.pageChanged,
          itemBuilder: (context, index) {
            Category category = _categories.loop(index);
            return InkWell(
              onTap: (){
                Get.toNamed('/category/123');
              },
              child: Container(
                margin: EdgeInsets.only(right: 18.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        decoration: BoxDecoration(
                          color: category.color.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(18.0)
                        ),
                        width: double.infinity,
                        height: controller.index.value == index ? 180.0 : 90.0,
                      ),
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: Container(
                          padding: EdgeInsets.only(bottom: 12.0, top: 18.0),
                            alignment: Alignment.center,
                            child: SimpleShadow(
                              sigma: 10.0,
                              opacity: 0.6,
                              offset: Offset(0, 10),
                              child: Image.asset(category.url, fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 12.0),
                          child: Text(
                            category.name,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],  
                ),
              ),
            );
          }
        );
      })
    );
  }
}