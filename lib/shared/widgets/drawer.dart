import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipes_book/core/routes/routes.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.network(
                      "https://mk0anatomieunes58h83.kinstacdn.com/wp-content/themes/cera/assets/images/avatars/user-avatar.png",
                      width: 66.0,
                    ),
                  ),
                  SizedBox(height: 18.0,),
                  Text(
                    "Ana Skulj", 
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "265 followers",
                    style: TextStyle(
                      color: Color(0xFF85888e),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              )
            ),
            Divider(),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Ionicons.home_outline),
                    title: Text("Home"),
                    onTap: (){
                      Get.offAndToNamed(RecipesBookRoutes.HOME);
                    },
                  ),
                  ListTile(
                    leading: Icon(Ionicons.person_outline),
                    title: Text("Profile"),
                    onTap: (){
                      Get.offAndToNamed(RecipesBookRoutes.PROFILE);
                    },
                  ),
                  ListTile(
                    leading: Icon(Ionicons.exit_outline),
                    title: Text("Sign out"),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Ionicons.share_social),
                    title: Text("Tell a Friend"),
                  ),
                  ListTile(
                    leading: Icon(Ionicons.help_circle_outline),
                    title: Text("Help and Feedback"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}