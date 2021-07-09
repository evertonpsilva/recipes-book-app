import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: Container(
        height: 165.0,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/3QN4ZVYTIBBKBAAVRZUZDFXI2A.jpg&w=1440",
            ),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 24.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.75),
                Colors.black.withOpacity(0.1),
                Colors.transparent,
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Larasta",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0
                ),
              ),
              SizedBox(height: 18.0,),
              Row(
                children: [
                  Text(
                    "48",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    "min",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "128",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    "view",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}