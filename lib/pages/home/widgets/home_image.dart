import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(width: HelperFunctions.screenWidth(context),
          height: HelperFunctions.screenHeight(context) * 0.95,
          child: const Image(image: AssetImage('assets/images/buildings1.jpg'),
            fit: BoxFit.cover,),
        ),
        Positioned(
          top: HelperFunctions.getAppBarHeight(),
          child: SizedBox(width: HelperFunctions.screenWidth(context),
              height: HelperFunctions.screenHeight(context),
              child:Container( color: Colors.black.withOpacity(0.5),)
          ),
        ),

        Positioned.fill(
          child: Row(
            children: [
              Flexible(child: Align(
                  alignment: Alignment.center,
                  child: Text('Welcome To \n       ABS Creative HUB', style: TextStyle( fontSize: HelperFunctions.screenWidth(context)* 0.08, color: Colors.white, fontWeight: FontWeight.bold),))),
            ],
          ),
        ),
      ],
    );
  }
}
