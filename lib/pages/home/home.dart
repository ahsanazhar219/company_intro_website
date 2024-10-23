import 'package:company_intro_website/pages/home/widgets/home_image.dart';
import 'package:company_intro_website/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        leading: const Image(image: AssetImage('assets/images/logo.png')),
        actions: [
          TextButton(onPressed: () => Navigator.pushNamed(context, '/home'), child:  const AppBarText(text:'Home')),
          TextButton(onPressed: () => Navigator.pushNamed(context, '/services'), child:  const AppBarText(text:'Services')),
          TextButton(onPressed: (){}, child:  const AppBarText(text:'Our Team')),
          TextButton(onPressed: (){}, child:  const AppBarText(text:'Projects')),
          TextButton(onPressed: (){}, child:  const AppBarText(text:'Contact Us')),
           SizedBox(width: HelperFunctions.screenWidth(context) * 0.1)
        ],
        ),

        body:  const SingleChildScrollView(
          child: Column(
            children: [
              /// main Image
              MainImage(),
              /// bottom text
              BottomText()
            ],
          ),
    ),

    );
  }
}

class AppBarText extends StatelessWidget {
  const AppBarText({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(text, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold), );
  }
}

class BottomText extends StatelessWidget {
  const BottomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: HelperFunctions.screenWidth(context),
      height: HelperFunctions.screenHeight(context) * 0.05,
      color: Colors.lightBlue,
      child:  Row(
        children: [
          Center(
            child: Text(
              'About ABS Creative HUB', style: TextStyle( fontSize: HelperFunctions.screenWidth(context)* 0.02, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
