import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipes_book/modules/home/widgets/categories_list.dart';
import 'package:recipes_book/shared/widgets/drawer.dart';
import 'package:recipes_book/shared/widgets/recipe_card.dart';
import 'package:recipes_book/shared/widgets/search_input.dart';
import 'package:recipes_book/shared/widgets/trending_card.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MenuDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Builder(builder: (context) =>
              InkWell(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(Ionicons.menu_outline),
                ),
              ),
            ),
            Expanded(
              child: SearchInput(),
            ),
            InkWell(
              onTap: (){},
              child: Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Icon(Ionicons.notifications_outline),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24.0, bottom: 12.0, left: 18.0),
            child: Text(
              "Trending",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            height: 165.0,
            alignment: Alignment.centerLeft,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.9, initialPage: 0),
              itemCount: 3,
              itemBuilder: (context, index){
                return Padding(
                  padding: EdgeInsets.only(right: index == 2 ? 0 : 12.0),
                  child: TrendingCard(),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 48.0, bottom: 12.0, left: 18.0),
            child: Text(
              "Categories",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          CategoriesList(),
          Padding(
            padding: EdgeInsets.only(top: 48.0, bottom: 12.0, left: 18.0),
            child: Text(
              "Recent",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: RecipeCard(),
          ),
          SizedBox(height: 18.0),
        ],
      ),
    );
  }
}