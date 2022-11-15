import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/2ndpage.dart';
class FirstContainer extends StatelessWidget {
  final String imagepath;
  final String title;
  final String subtitle;
  final String subtitle2;


  const FirstContainer({Key? key,
    required this.imagepath,required this.title,

    required this.subtitle,
    required this.subtitle2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecPage()));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,width: 180,
            decoration: BoxDecoration(
             color: Color(0xFF232227),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 8,
                  spreadRadius: 2
                ),

              ],
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage(imagepath),
                    height: 170,width: 170,
                  ),
                  Text(title,style: TextStyle(color:
                  Colors.white,fontSize: 18,
                      fontWeight: FontWeight.bold),),
                  SizedBox(height: 4,),
                  Text(subtitle2,style: TextStyle(color:
                  Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                  SizedBox(height: 4,),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(subtitle,style: TextStyle(color:
                       Colors.white,fontSize: 18,
                           fontWeight: FontWeight.bold),),
                      Icon(CupertinoIcons.cart_badge_plus,color: Colors.white,),
                     ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
