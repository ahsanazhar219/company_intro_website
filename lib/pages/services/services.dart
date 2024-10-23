import 'package:company_intro_website/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../widgets/text_sizes.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(image: DecorationImage(
                  image: AssetImage('assets/images/buildings4.jpg'), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: HelperFunctions.screenWidth(context),
              height: HelperFunctions.screenHeight(context),
              child: Container(color: Colors.blue.withOpacity(0.2),),
            ),
        
        
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: HelperFunctions.screenWidth(context),
                height: HelperFunctions.screenHeight(context) * 0.7,
                child: Container(color: Colors.blueAccent,),
              ),
            ),
        
            /// Heading
            const Padding(
              padding: EdgeInsets.all(HelperFunctions.spaceBtwSections),
              child: Column(
                children: [
                  HeadingText(text: 'Our Services',),
                  BodyText(text: 'body text',),
                ],
              ),
            ),

            /// Details
            const Positioned(
              bottom: 0,
              child: Padding(
                padding: EdgeInsets.all(HelperFunctions.spaceBtwSections),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
        
                    SubHeading(text: 'Web Development',),
                    BodyText(text: 'body text',),
                    SizedBox(height: HelperFunctions.spaceBtwItems),
        
                    SubHeading(text: 'Title',),
                    BodyText(text: 'body text',),
                    SizedBox(height: HelperFunctions.spaceBtwItems),
        
                    SubHeading(text: 'Title',),
                    BodyText(text: 'body text',),
                    SizedBox(height: HelperFunctions.spaceBtwItems),
        
                    SubHeading(text: 'Title',),
                    BodyText(text: 'body text',),
                    SizedBox(height: HelperFunctions.spaceBtwItems),
                    
                  ],
                ),
              ),
            )
        
          ],
        ),
      ),
    );
  }
}



