import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipes_book/modules/profile/widgets/recent_recipes_profile.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, 
          icon: Icon(Ionicons.arrow_back),
        ),
        title: Text(
          "Profile", 
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 18.0, bottom: 24.0),
              margin: EdgeInsets.only(bottom: 18.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(18.0),
                  bottomRight: Radius.circular(18.0),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30.0,
                    offset: Offset(0, -10),
                    color: Colors.grey
                  ),
                ]
              ),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.network(
                      "https://mk0anatomieunes58h83.kinstacdn.com/wp-content/themes/cera/assets/images/avatars/user-avatar.png",
                      width: 120.0,
                    ),
                  ),
                  SizedBox(height: 18.0,),
                  Text(
                    "Anna Alvarado",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0
                    ),
                  ),
                  SizedBox(height: 12.0,),
                  Text(
                    "Guildhall School of Music & Drama",
                    style: TextStyle(
                      color: Color(0xFF85888e),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    "London, UK",
                    style: TextStyle(
                      color: Color(0xFF85888e),
                      fontWeight: FontWeight.w600,
                      fontSize: 12.0,
                      letterSpacing: 1.1
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Recipes",
                            style: TextStyle(
                              color: Color(0xFF85888e),
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "456",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700
                            ),  
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Followers",
                            style: TextStyle(
                              color: Color(0xFF85888e),
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            "602",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                            ),  
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Follows",
                            style: TextStyle(
                              color: Color(0xFF85888e),
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            "290",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                            ),  
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(18.0, 12.0, 18.0, 30.0),
                child: RecentRecipesProfile(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}