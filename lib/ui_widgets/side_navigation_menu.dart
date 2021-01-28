import 'package:flutter/material.dart';
import 'package:iflexweb_app/categories_page.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
import '../home.dart';
class SideNavigationMenu extends StatefulWidget {
  @override
  _SideNavigationMenuState createState() => _SideNavigationMenuState();
}

class _SideNavigationMenuState extends State<SideNavigationMenu> {
  List products = [
    'Breakfast',
    'Fruits',
    'Vegetables',
    'Food Grains',
    'Poultry',
    'Beverages',
    'Snacks',
    'Sweets & Dry Fruits',
    'Frozen',
    'Personal Care',
    'Pooja & Festival Items',
    'Personal & Home Care',
    'Cooking Oils',
    'Masala',
    'Batters & Dairy Products'
  ];

  getSideMenuItems() {
    List<Widget> sideMenuListWidgets = [];
    for (var index = 0; index < products.length; index++) {
      sideMenuListWidgets.add(FlatButton(
        onPressed: (){
            Navigator.push(context,MaterialPageRoute(
              builder: (BuildContext context)=>CategoriesPage(products[index]),
              //builder: (BuildContext context)=>CategoriesPage(),
            ));
        },
        child: Wrap(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                      child: Text('${products[index]}')),
                ),
            Divider(
              color: Colors.grey,
              thickness: 0.4,
              indent: 10,
              endIndent: 10,
            )
          ],
        ),
      ));
    }
    return sideMenuListWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.21,
          child: Row(
            children: [
              SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        color: AppColors.yellowColor,
                        width: MediaQuery.of(context).size.width * 0.20,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.18,
                            child: Column(
                              children: getSideMenuItems(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
