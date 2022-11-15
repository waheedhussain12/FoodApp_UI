import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/widgets/container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.sort,
                      size: 40,
                      color: Colors.white60,
                    ),
                    Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Hot & Fast Food',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Delievers on Time',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TabBar(
                  indicator: BoxDecoration(),
                  isScrollable: true,
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(
                      text: 'Burger',
                    ),
                    Tab(
                      text: 'Pizza',
                    ),
                    Tab(
                      text: 'Soft Drinks',
                    ),
                    Tab(
                      text: 'Pasta',
                    ),
                  ]),
              Flexible(
                flex: 1,
                child: TabBarView(children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          FirstContainer(
                            imagepath: 'images/1.png',
                            title: 'Cheese Burger',
                            subtitle: '\$200',
                            subtitle2: 'Hot Burger',
                          ),
                          FirstContainer(
                            imagepath: 'images/3.png',
                            title: 'Beef Burger',
                            subtitle: '\$100',
                            subtitle2: 'Large Burger',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FirstContainer(
                            imagepath: 'images/4.png',
                            title: 'Veggie Burger',
                            subtitle: '\$50',
                            subtitle2: 'Small Burger',
                          ),
                          FirstContainer(
                            imagepath: 'images/b1.png',
                            title: 'Chiken Burger',
                            subtitle: '\$80',
                            subtitle2: 'Medium Burger',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          FirstContainer(
                            imagepath: 'images/p1.png',
                            title: 'Cheese Pizza',
                            subtitle: '\$50',
                            subtitle2: 'Small Size',
                          ),
                          FirstContainer(
                            imagepath: 'images/p2.png',
                            title: 'Salami Pizza',
                            subtitle: '\$80',
                            subtitle2: 'Medium Size',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FirstContainer(
                            imagepath: 'images/p3.png',
                            title: 'Italian Pizza',
                            subtitle: '\$150',
                            subtitle2: 'Large Size',
                          ),
                          FirstContainer(
                            imagepath: 'images/p4.png',
                            title: 'Meat Pizza',
                            subtitle: '\$250',
                            subtitle2: 'Extra Large Size',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          FirstContainer(
                            imagepath: 'images/drink4.png',
                            title: 'Pepsi Drink',
                            subtitle: '\$20',
                            subtitle2: 'Fixed Size',
                          ),
                          FirstContainer(
                            imagepath: 'images/drink3.png',
                            title: 'Coke Drink',
                            subtitle: '\$25',
                            subtitle2: 'Fixed Size',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FirstContainer(
                            imagepath: 'images/drink2.png',
                            title: 'Fanta Drink',
                            subtitle: '\$15',
                            subtitle2: 'Fixed Size',
                          ),
                          FirstContainer(
                            imagepath: 'images/drink1.png',
                            title: 'Margarita Drink',
                            subtitle: '\$65',
                            subtitle2: 'Fixed Size',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          FirstContainer(
                            imagepath: 'images/pasta1.png',
                            title: 'Penne Pasta',
                            subtitle: '\$40',
                            subtitle2: 'Half Plate',
                          ),
                          FirstContainer(
                            imagepath: 'images/pasta2.png',
                            title: 'Fusilli Pasta',
                            subtitle: '\$85',
                            subtitle2: 'Full Plate',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FirstContainer(
                            imagepath: 'images/pasta3.png',
                            title: 'Macaroni Pasta',
                            subtitle: '\$60',
                            subtitle2: 'Half Plate',
                          ),
                          FirstContainer(
                            imagepath: 'images/pasta4.png',
                            title: 'Capellini Pasta',
                            subtitle: '\$140',
                            subtitle2: 'Full Plate',
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 8,
                        spreadRadius: 2),
                  ],
                  color: Color(
                    (0xFF232227),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.white,
                        size: 32,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 32,
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orangeAccent,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.yellow,
                                blurRadius: 8,
                                spreadRadius: 1),
                          ],
                        ),
                        child: Icon(
                          CupertinoIcons.cart_badge_plus,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 32,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
