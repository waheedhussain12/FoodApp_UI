import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SecPage extends StatelessWidget {
  const SecPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios,color: Colors.white,size: 35,),
                    Icon(CupertinoIcons.cart_fill,color: Colors.white,size: 35,),
                  ],
                ),
              ),
              Image(image: AssetImage('images/bg.png'),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Hot & Fressh Burger',style: TextStyle(color:
                  Colors.white,fontSize: 28,
                      fontWeight: FontWeight.bold),),
                  SizedBox(width: 15,),
                  Container(height: 28,width: 28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                    child: Center(child: Icon(CupertinoIcons.minus,color: Colors.black,size: 20,)),
                  ),
                  Text('2',style: TextStyle(
                    fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                  ),),
                  Container(height: 28,width: 28,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Icon(CupertinoIcons.add,color: Colors.black,size: 20,)),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Text('We Bring you the burger with cheese served with onion,cold drink and fries.'
                  'We Bring you the burger with cheese served with onion,cold drink and fries.',
                style: TextStyle(
                color: Colors.grey,fontSize: 16
              ),),SizedBox(height: 50,),
              Text('Total Price',style: TextStyle(color: Colors.grey,
                  fontSize: 22,fontWeight: FontWeight.bold),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$100',style: TextStyle(color: Colors.white,
                      fontSize: 22,fontWeight: FontWeight.bold),),
                  Container(
                    height: 55,width: 140,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Buy Now',style: TextStyle(color: Colors.white,
                            fontSize: 20,fontWeight: FontWeight.bold),),
                        Icon(CupertinoIcons.cart_fill,color: Colors.white,size: 30,)
                      ],
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
