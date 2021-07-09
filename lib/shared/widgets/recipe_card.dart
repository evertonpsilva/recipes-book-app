import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipes_book/modules/recipe/recipe.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(() => Recipe());
      },
      child: Container(
        height: 165.0,
        width: double.infinity,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Colors.grey.withOpacity(0.4),
              offset: Offset(-20.0, 12),
            ),
          ]
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: "adsasdsdasdasdadsasda",
              child: Container(
                width: 120.0,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/3QN4ZVYTIBBKBAAVRZUZDFXI2A.jpg&w=1440",
                    ),
                  )
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                        child: Row(
                        children: [
                          ClipOval(
                            child: Image.network(
                              "https://mk0anatomieunes58h83.kinstacdn.com/wp-content/themes/cera/assets/images/avatars/user-avatar.png", 
                              width: 28.0,
                            ),
                          ),
                          SizedBox(width: 18.0,),
                          Expanded(
                            child: Container(
                              child: Text(
                                "Christ Sima",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "Pisang Kuning",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Processed bananas that use their skin for snacks",
                        style: TextStyle(
                          color: Color(0xFF85888e),
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("48"),
                        SizedBox(width: 12.0,),
                        Text("min"),
                        SizedBox(width: 12.0,),
                        Text("1128"),
                        SizedBox(width: 12.0,),
                        Text("view"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0, right: 6.0),
              child: Icon(Ionicons.bookmark_outline),
            ),
          ],
        ),
      ),
    );
  }
}