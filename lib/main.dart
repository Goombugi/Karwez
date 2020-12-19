//import 'dart:js';

import 'package:flutter/material.dart';
void main() => (runApp(MaterialApp(
 home: Home(),
)
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSearching = false;
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
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 35.0,
            onPressed: (){},
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
                  // Column(
                  //   children:[
                  //   Container(
                  //       height: 35.0,
                  //       width: 35.0,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(37.0),
                  //       color:Colors.amberAccent,
                  //     ),
                  //     // Creating add icon
                  //     child: IconButton(
                  //       icon: Icon(Icons.add),
                  //       color: Colors.white,
                  //       onPressed: (){},
                  //     ),
                  //
                  //   ),
                  //     SizedBox(height: 7.0),
                  //     Text('اضافة',
                  //     style: TextStyle(
                  //       fontFamily: '',
                  //       fontSize: 14.0,
                  //       fontWeight: FontWeight.w400,
                  //     ),
                  //     )
                  //   ],
                  // ),
                  SizedBox(width: 5.0),
                  listItem('assets/smartphones.jpg', 'هواتف', true),
                  SizedBox(width: 5.0),
                  listItem('assets/accessories.jpg', 'اكسيسوارات', true),
                  SizedBox(width: 5.0),
                  listItem('assets/md.jpg', ' ملبوسات رجالية', true),
                  SizedBox(width: 5.0),
                  listItem('assets/wd.jpg', 'ملبوسات نسائية ', true),
                  SizedBox(width: 5.0),
                  listItem('assets/drugs.jpg', 'ادوياء', true),
                ],
              ),
          ),
         SizedBox(height: 15.0) ,
          firstStyleRow('assets/K-Black1.jpg', 'assets/wd.jpg', 'assets/K-Wight.jpg')
        ],
      ),
    );
  }
}
Widget firstStyleRow(String imgPath1, String imgPath2, String avatarImg){
  BuildContext context;
  return Container(
    height: 250.0,
    padding: EdgeInsets.only(left: 10.0, right: 10.0),
    child: Row(
      children:[
        Container(
          height: 250.0,
          width: (MediaQuery.of(context).size.width - 30.0) /2,
              child: Column(
                  children: [
                    Container(
                      height: 125.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(imgPath1),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text('!!!"كارويز واحصل على كل احتياجاتك... قريبا',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: ''
                    )
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: AssetImage(avatarImg),
                          ),
                        ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Text(
                             'قريبا" كارويز معانا!',
                             textAlign: TextAlign.right,
                             style: TextStyle(
                               fontFamily: '',
                               color: Colors.amber),
                             ),
                          Text(
                            '!!كن معنا وتمتع بنظام الاسواق العالمية',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontFamily: '',
                              color: Colors.grey
                            ),
                          ),

                          ],
                        )
                      ]
                    ),
                  ],
          )
        ),
      ]
    ),
  );
}

// list of my item shows
listItem(String imgPath, String name, bool available){
  return Column(
    children:[
      Container(
        height: 55.0,
        width: 55.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(37.0),
          image:DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          ),
        ),
        // Creating add icon
        child: IconButton(
          icon: Icon(Icons.add),
          color: Colors.white,
          onPressed: (){},
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
          available? Container(
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.amberAccent,
            ),
          ): Container(

          )
        ],
      )
    ],
  );
}