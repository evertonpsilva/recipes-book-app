import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final double? width;
  final BoxFit? fit;

  const Logo({ 
    Key? key,
    double? width,
    BoxFit? fit,
  }) : this.width = width,
       this.fit = fit,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/logo/logo.png",
      fit: fit ?? BoxFit.contain,
      width: width ?? 120.0,
    );
  }
}