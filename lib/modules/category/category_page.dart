import 'package:flutter/material.dart';
import 'package:recipes_book/shared/widgets/recipe_card.dart';
import 'package:recipes_book/shared/widgets/search_input.dart';



class CategoryPage extends StatelessWidget {
  const CategoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
      physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: false,
            forceElevated: false,
            title: Text(
              "Pasta",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 16.0
              ),
            ),
            bottom: PreferredSize(
              child: Container(
                height: 102.0,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 42.0,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: SearchInput(),
                    ),
                    SizedBox(height: 12.0,),
                    Container(
                      height: 36.0,
                      padding: EdgeInsets.only(left: 12.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Chip(
                              label: Text(
                                "food",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              onDeleted: (){},
                              backgroundColor: Theme.of(context).accentColor,
                              deleteIconColor: Colors.white,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(102.0),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int pdIndex) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 18.0, 12.0, pdIndex == 11 ? 18.0 : 0),
                  child: RecipeCard(),
                );
              },
              childCount: 12,
            ),
          ),
        ],
      ),
    );
  }
}