import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class RecentRecipesProfile extends StatelessWidget {
  const RecentRecipesProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: constraints,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth / 2 - 4.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/3QN4ZVYTIBBKBAAVRZUZDFXI2A.jpg&w=1440"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0.45),
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pisang Kuning",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Ionicons.heart,
                              color: Colors.white,
                            ),
                            Text(
                              "203",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 18.0),
                            Icon(
                              Ionicons.chatbubbles,
                              color: Colors.white,
                            ),
                            Text(
                              "23",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 9.0,),
              Expanded(child:
                Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18.0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/3QN4ZVYTIBBKBAAVRZUZDFXI2A.jpg&w=1440"),
                                fit: BoxFit.cover
                              )
                            ),
                            child: Container(
                              color: Colors.black.withOpacity(0.4),
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(horizontal: 18.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Pisang Kuning",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Ionicons.heart,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "203",
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 18.0),
                                      Icon(
                                        Ionicons.chatbubbles,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "23",
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 9.0,),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18.0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/3QN4ZVYTIBBKBAAVRZUZDFXI2A.jpg&w=1440"),
                                fit: BoxFit.cover
                              )
                            ),
                            child: Container(
                              color: Colors.black.withOpacity(0.4),
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(horizontal: 18.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Pisang Kuning",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Ionicons.heart,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "203",
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 18.0),
                                      Icon(
                                        Ionicons.chatbubbles,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "23",
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        );
      },
    );
  }
}