import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_book/modules/recipe/controllers/recipe_controller.dart';
import 'package:recipes_book/modules/recipe/widgets/recipe_scaffold.dart';

class Recipe extends StatelessWidget {

  final controller = Get.put(RecipeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView( 
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            floating: true,
            forceElevated: true,
            iconTheme: IconThemeData(
              color: Colors.white
            ),
            title: Text("Pisang Kuning"),
            bottom: PreferredSize(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)
                ),
                child: Container(
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 18.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TabBar(
                      isScrollable: false,
                      indicator:  UnderlineTabIndicator(
                        borderSide: BorderSide(width: 2.0, color: Theme.of(context).accentColor),
                        insets: EdgeInsets.symmetric(horizontal: 48.0)
                      ),
                      labelColor: Theme.of(context).accentColor,
                      indicatorColor: Theme.of(context).accentColor,
                      unselectedLabelColor: Color(0xFF85888e),
                      controller: controller.tabController,
                      tabs: [
                        Tab(text: "Ingredients"),
                        Tab(text: "Process"),
                        Tab(text: "Tools"),
                      ],
                    ),
                  ),
                )
              ),
              preferredSize: Size.fromHeight(48.0),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: "adsasdsdasdasdadsasda",
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/3QN4ZVYTIBBKBAAVRZUZDFXI2A.jpg&w=1440")
                    )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                          0.0,
                          0.54,
                        ],
                        colors: [
                          Colors.black45,
                          Colors.transparent
                        ]
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: controller.tabController,
              children: <Widget>[
                ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            (index + 1).toString()+'.', 
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0
                            ),
                          ),
                          SizedBox(width: 18.0,),
                          Text("Item"),
                        ],
                      ),
                    );
                  },
                ),
                Text("Tab 2"),
                Text("Tab 3"),
              ],
            ),
          ),
        ]
      ),
    );
  }
}