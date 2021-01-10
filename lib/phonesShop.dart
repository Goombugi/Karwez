import 'package:flutter/material.dart';
import 'main.dart';

import 'package:karwez/pharmacies.dart';
import 'package:karwez/menDresses.dart';
import 'package:karwez/womenDresses.dart';

void main() => (runApp(MaterialApp(
  home: PhonesShope(),
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/phonesShop': (context) => PhonesShope(),
      '/pharmacies': (context) => Pharmacies(),
      '/menDresses': (context) => MenDresses(),
      '/womenDresses': (context) => WomenDresses(),
    }
)
));

class PhonesShope extends StatefulWidget {
  @override
  _PhonesShopeState createState() => _PhonesShopeState();
}

class _PhonesShopeState extends State<PhonesShope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.amberAccent,

        title: Text('Karwez',
          style: TextStyle(
            fontFamily: 'Jacques-font',
            fontSize: 35.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 35.0,
          onPressed: () {

          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 35.0,
            onPressed: () {

            },
          ),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: [
        Container(
        height: 125.0,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10.0),
          children: [
            listItem('assets/K-Wight1.jpg', 'الصفحة الرئسية', true, '/'),
            SizedBox(width: 5.0),
            listItem('assets/smartphones.jpg', 'هواتف', true, '/phonesShop'),
            SizedBox(width: 5.0),
            listItem('assets/accessories.jpg', 'اكسيسوارات', true, null),
            SizedBox(width: 5.0),
            listItem('assets/md.jpg', ' ملبوسات رجالية', true,'/menDresses'),
            SizedBox(width: 5.0),
            listItem('assets/wd.jpg', 'ملبوسات نسائية ', true,'/womenDresses'),
            SizedBox(width: 5.0),
            listItem('assets/drugs.jpg', 'ادوية', true,'/pharmacies'),

          ],
        ),
      ),
          Container(
            child: Column(
               children: [
            Padding(
            // Text align of the app
            padding: const EdgeInsets.only(left: 277.0),
            child: Text(
              'تسواق هنا',
              style: TextStyle(
                  fontFamily: '',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold

              ),
            ),
          ),
        SizedBox(height:15.0),
        GridView.count(
          crossAxisCount: 2,
          primary: false,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.85,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: [
              _buildShoppingCard('سامسونج', 'باب الحاره', 'assets/phone1.jpeg', 1300, 09122, 1),
              _buildShoppingCard('اوبو', ' Software House', 'assets/phone6.jpeg', 3500, 0121, 2),
              _buildShoppingCard('ايفون', 'امجد استور', 'assets/phone11.jpeg', 1000, 09909, 3),
              _buildShoppingCard('سامسونج', 'Software House', 'assets/phone2.jpeg', 1500, 0993, 4),
              _buildShoppingCard('Lenovo', 'باب الحاره', 'assets/phone4.jpeg', 1300, 09122, 5),
              _buildShoppingCard('اوبو', ' Software House ', 'assets/phone5.jpeg', 3500, 0121, 6),
              _buildShoppingCard('ايفون', 'امجد استور', 'assets/phone7.jpeg', 1000, 09909, 7),
              _buildShoppingCard('HTC', 'باب الحاره', 'assets/phone12.jpeg', 1500, 0993, 8),

           ],
          ),
  ]
        ),
      )

    ],

    ),

    );
  }
  listItem(String imgPath, String name, bool available,String toPage) {
    return Column(
      children: [
        Container(
          height: 55.0,
          width: 55.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(37.0),
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
          // Creating add icon
          child: IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, toPage);
            },
          ),

        ),
        SizedBox(height: 7.0),
        Row(
          children: [
            Text(name,
              style: TextStyle(
                fontFamily: '',
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 4.0),
            available ? Container(
              height: 10.0,
              width: 10.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.amberAccent,
              ),
            ) : Container(

            )
          ],
        )
      ],
    );
  }
}



// Gallery function


Widget _buildShoppingCard(
    String name, String shop, String cardImage, int likes, int commentCount, int cardIndex
    ){
  return Padding(
      padding: cardIndex.isEven? EdgeInsets.only(right: 15.0): EdgeInsets.only(left: 15.0),
      child: Container(
        //it was 4000
          height: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                style: BorderStyle.solid,
                width: 1.0,
              )
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10/0)
                        ),
                        image: DecorationImage(
                            image: AssetImage(cardImage),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                    child: Text(
                      name, style: TextStyle(
                      fontFamily: '',
                      fontSize: 15.0,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      shop, style: TextStyle(
                        fontFamily: '',
                        fontSize: 12.0,
                        color: Colors.grey
                    ),
                    ),
                  ),
                  SizedBox(height: 3.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.money,
                          color: Colors.green.withOpacity(0.4),
                        ),
                        SizedBox(width: 2.0),
                        Text(
                          likes.toString(),
                          style: TextStyle(
                              fontFamily: '',
                              fontSize: 12.0,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Icon(
                          Icons.phone,
                          color: Colors.black.withOpacity(0.4),
                        ),
                        SizedBox(width: 2.0),
                        Text(
                          commentCount.toString(),
                          style: TextStyle(
                              fontFamily: '',
                              fontSize: 12.0,
                              color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                left: 125.0,
                top: 102.0,
                child: Container(
                  height: 40.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.amber
                  ),
                  child: Center(
                    child: Icon(Icons.shopping_cart_outlined, color: Colors.black),
                  ),
                ),
              )
            ],
          )
      )
  );
}

