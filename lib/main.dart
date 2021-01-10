import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karwez/phonesShop.dart';
import 'package:karwez/pharmacies.dart';
import 'package:karwez/menDresses.dart';
import 'package:karwez/womenDresses.dart';



void main() => (runApp(MaterialApp(
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


class Home extends StatefulWidget {

   @override
   _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   bool isSearching = false;

   @override
   Widget build(BuildContext context) {
      return  Scaffold(
         drawer: Drawer(
            child: Column(
               children: <Widget>[
                  SizedBox(
                     height: 30,
                  ),
                  DrawerHeader(
                     child: Container(
                         height: 142,
                         width: MediaQuery.of(context).size.width,
                         child: Image.asset(
                            "assets/images/ten_news.png",
                         )),
                     decoration: BoxDecoration(
                        color: Colors.transparent,
                     ),
                  ),
                  SizedBox(
                     height: 20,
                  ),
                  GestureDetector(
                     onTap: () {
                        setState(() {

                        });
                        Navigator.of(context).pop();
                     },
                     child: Text(
                        'اشترك معا',
                        style: TextStyle(
                           fontFamily: 'Avenir',
                           fontSize: 24,
                           fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                     ),
                  ),
                  SizedBox(
                     height: 45,
                  ),
                  GestureDetector(
                     onTap: () {},
                     child: Text(
                        'الشكاوي والاقتراحات',
                        style: TextStyle(
                           fontFamily: 'Avenir',
                           fontSize: 24,
                           fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                     ),
                  ),
                  SizedBox(
                     height: 45,
                  ),
                  Text(
                     'عن التطبيق',
                     style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                     ),
                     textAlign: TextAlign.center,
                  ),
                  SizedBox(
                     height: 45,
                  ),
                  Text(
                     '',
                     style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                     ),
                     textAlign: TextAlign.center,
                  ),
                  SizedBox(
                     height: 45,
                  ),
                  Expanded(
                      child: Align(
                         alignment: Alignment.bottomCenter,
                         child: Container(
                            height: 65,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.amberAccent,
                            child: Center(
                               child: Text(
                                  'Design by: Cliff Levai',
                                  style: TextStyle(
                                     fontFamily: 'Jacques-font',
                                     fontSize: 8,
                                      color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                               ),
                            ),
                         ),
                      ))
               ],
            ),
      ),
         appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.amberAccent,

            title: !isSearching ? Text('Karwez',
               style: TextStyle(
                  fontFamily: 'Jacques-font',
                  fontSize: 35.0,

                  color: Colors.black,
               ),
            ): TextField(
               decoration: InputDecoration(
                   icon: Icon(Icons.search),

                   hintText: 'اكتب اسم المنتج'
               ),),
            centerTitle: true,
            actions: [
               isSearching ? IconButton(
                  icon: Icon(Icons.cancel),
                  color: Colors.black,
                  iconSize: 35.0,
                  onPressed: () {
                     setState((){
                        this.isSearching = false;
                     });
                  },
               ):
               IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.black,
                  iconSize: 35.0,
                  onPressed: () {
                     setState((){
                        this.isSearching = true;
                     });
                  },
               ),
            ],

            leading: Builder(
               builder: (context) => IconButton(
               icon: Icon(Icons.menu),
               color: Colors.black,
               iconSize: 35.0,
               onPressed: () => Scaffold.of(context).openDrawer(),

            ),
      ),


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
               SizedBox(height: 15.0),
               // Container(
               //    padding: EdgeInsets.all(10.0),
               //    height: 250.0,
               //    child: Row(
               //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               //       children: [
               //          Column(
               //             children: [
               //                Stack(
               //                   children: [
               //                      Container(
               //                         height: 230.0,
               //                         width: MediaQuery
               //                             .of(context)
               //                             .size
               //                             .width - MediaQuery
               //                             .of(context)
               //                             .size
               //                             .width / 3,
               //                         decoration: BoxDecoration(
               //                            borderRadius: BorderRadius.circular(5.0),
               //                            image: DecorationImage(
               //                               image: AssetImage('assets/K-Black1.jpg'),
               //                               fit: BoxFit.cover,
               //                            ),
               //                         ),
               //                      ),
               //                      Positioned(
               //                          left: 15.0,
               //                          top: 130.0,
               //                          child: Column(
               //                             crossAxisAlignment: CrossAxisAlignment.start,
               //                             children: [
               //                                Text('',
               //                                   style: TextStyle(
               //                                       color: Colors.amber,
               //                                       fontFamily: 'Jacques-font',
               //                                       fontSize: 30.0,
               //                                       fontWeight: FontWeight.bold),
               //                                ),
               //                                Text('',
               //                                   style: TextStyle(
               //                                      color: Colors.amber,
               //                                      fontFamily: 'Jacques-font',
               //                                      fontSize: 20.0,
               //                                   ),
               //
               //                                ),
               //                             ],
               //                          )
               //                      ),
               //                   ],
               //                )
               //             ],
               //          ),
               //          SizedBox(width: 5.0),
               //          Column(
               //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               //             children: [
               //                Material(
               //                    borderRadius: BorderRadius.circular(7.0),
               //                    elevation: 2.0,
               //                    child: Container(
               //                       height: 60.0,
               //                       width: 60.0,
               //                       decoration: BoxDecoration(
               //                           borderRadius: BorderRadius.circular(7.0)
               //                       ),
               //                       child: Column(
               //                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               //                          children: [
               //                             Icon(Icons.folder_open_sharp,
               //                                 color: Colors.amber),
               //                             Text(
               //                                'اشتراك',
               //                                style: TextStyle(
               //                                    fontFamily: 'Jacques-font',
               //                                    fontSize: 15.0,
               //                                    fontWeight: FontWeight.bold),
               //                             )
               //
               //                          ],
               //                       ),
               //
               //                    )
               //                ),
               //                Material(
               //                   borderRadius: BorderRadius.circular(7.0),
               //                   elevation: 2.0,
               //                   child: Container(
               //                      height: 60.0,
               //                      width: 60.0,
               //                      decoration: BoxDecoration(
               //                          borderRadius: BorderRadius.circular(7.0)
               //                      ),
               //                      child: Column(
               //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               //                         children: [
               //                            Icon(Icons.chat_bubble,
               //                                color: Colors.amber.withOpacity(0.5)),
               //                            Text(
               //                               'شكاوي',
               //                               style: TextStyle(
               //                                   fontFamily: 'Jacques-font',
               //                                   fontSize: 15.0,
               //                                   fontWeight: FontWeight.bold),
               //                            ),
               //
               //                         ],
               //                      ),
               //
               //                   ),
               //                ),
               //
               //                Material(
               //                   borderRadius: BorderRadius.circular(7.0),
               //                   elevation: 2.0,
               //                   child: Container(
               //                      height: 60.0,
               //                      width: 60.0,
               //                      decoration: BoxDecoration(
               //                          borderRadius: BorderRadius.circular(7.0)
               //                      ),
               //                      child: Column(
               //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               //                         children: [
               //                            Icon(Icons.note, color: Colors.amber),
               //                            Text(
               //                               'احجز',
               //                               style: TextStyle(
               //                                   fontFamily: 'Jacques-font',
               //                                   fontSize: 15.0,
               //                                   fontWeight: FontWeight.bold),
               //                            )
               //                         ],
               //                      ),
               //
               //                   ),
               //                ),
               //             ],
               //          )
               //       ],
               //    ),
               // ),
               SizedBox(height: 10.0),
               // Women dresses
               //listItem('assets/wali.jpg', '', false),
               Container(
                   height: 40.0,
                   color: Colors.transparent,
                   child: Container(

                       decoration: BoxDecoration(
                           border: Border.all(
                               color: Colors.amber,
                               style: BorderStyle.solid,
                               width: 2.0
                           ),
                           color: Colors.transparent,
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text('جلاليب الوالي',
                                style: TextStyle(
                                   fontWeight: FontWeight.bold,

                                ),
                             ),
                             Container(

                              decoration: BoxDecoration(
                                 border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 2.0
                                 ),
                                     color: Colors.transparent,
                                 borderRadius: BorderRadius.circular(20.0),
                              ),
                                child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                ),
                             ),
                          ],
                       )

                   )
               ),
               SizedBox(height: 8.0),
               Container(
                  height: 200.0,
                  child: ListView(
                     padding: EdgeInsets.only(left: 20.0, right: 20.0),
                     scrollDirection: Axis.horizontal,
                     children: [

                        getWomen('assets/jlabia4.jpg',''),
                        SizedBox(width: 10.0),

                        getWomen('assets/jlabia5.jpg',''),
                        SizedBox(width: 10.0),
                        getWomen('assets/jlabia6.jpg',''),
                        SizedBox(width: 10.0),
                        getWomen('assets/jlabia7.jpg',''),
                        SizedBox(width: 10.0),
                        getWomen('assets/jlabia8.jpg',''),
                        SizedBox(width: 10.0),
                        getWomen('assets/jlabia9.jpg',''),
                     ],
                  ),
               ),
               SizedBox(height: 40.0),
               // men dresses
               Container(
                   height: 40.0,
                   color: Colors.transparent,
                   child: Container(

                       decoration: BoxDecoration(
                           border: Border.all(
                               color: Colors.amber,
                               style: BorderStyle.solid,
                               width: 2.0
                           ),
                           color: Colors.transparent,
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text('الوالي جلاليب نسائية',
                                style: TextStyle(
                                   fontWeight: FontWeight.bold,

                                ),
                             )
                          ],
                       )
                   )
               ),
               Container(
                  height: 200.0,
                  child: ListView(
                     padding: EdgeInsets.only(left: 20.0, right: 20.0),
                     scrollDirection: Axis.horizontal,
                     children: [
                        getMen('assets/short1.jpg','جلاليب نسائية'),
                        SizedBox(width: 10.0),
                        getMen('assets/jlabia2.jpg',''),
                        SizedBox(width: 10.0),
                        getMen('assets/jlabia3.jpg',''),
                        SizedBox(width: 10.0),
                        getMen('assets/short10.jpg',''),
                        SizedBox(width: 10.0),
                        getMen('assets/short6.jpg',''),
                        SizedBox(width: 10.0),
                        getMen('assets/short9.jpg',''),
                        SizedBox(width: 10.0),
                        getMen('assets/short11.jpg',''),
                        SizedBox(width: 10.0),
                        getMen('assets/wali.jpg',''),
                     ],
                  ),
               ),
               SizedBox(height:40.0),
               Container(
                   height: 40.0,
                   color: Colors.transparent,
                   child: Container(

                       decoration: BoxDecoration(
                           border: Border.all(
                               color: Colors.amber,
                               style: BorderStyle.solid,
                               width: 2.0
                           ),
                           color: Colors.transparent,
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text('هواتف',
                                style: TextStyle(
                                   fontWeight: FontWeight.bold,

                                ),
                             )
                          ],
                       )
                   )
               ),
               Container(
                  height: 200.0,
                  child: ListView(
                     padding: EdgeInsets.only(left: 20.0, right: 20.0),
                     scrollDirection: Axis.horizontal,
                     children: [
                        getPhone('assets/phone1.jpeg',' '),
                        SizedBox(width: 10.0),
                        getPhone('assets/phone2.jpeg',''),
                        SizedBox(width: 10.0),
                        getPhone('assets/phone3.jpeg',''),
                        SizedBox(width: 10.0),
                        getPhone('assets/phone4.jpeg',''),
                        SizedBox(width: 10.0),
                        getPhone('assets/phone7.jpeg',''),
                        SizedBox(width: 10.0),
                        getPhone('assets/phone6.jpeg',''),
                        SizedBox(width: 10.0),
                        getPhone('assets/phone8.jpeg',''),
                        SizedBox(width: 10.0),
                        getPhone('assets/phone9.jpeg',''),
                        SizedBox(width: 10.0),
                        getPhone('assets/phone5.jpeg',''),
                     ],
                  ),
               ),
               SizedBox(height:40.0),
               Container(
                   height: 40.0,
                   color: Colors.transparent,
                   child: Container(

                       decoration: BoxDecoration(
                           border: Border.all(
                               color: Colors.amber,
                               style: BorderStyle.solid,
                               width: 2.0
                           ),
                           color: Colors.transparent,
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text('ادوية',
                                style: TextStyle(
                                   fontWeight: FontWeight.bold,

                                ),
                             )
                          ],
                       )
                   )
               ),
               Container(
                  height: 200.0,
                  child: ListView(
                     padding: EdgeInsets.only(left: 20.0, right: 20.0),
                     scrollDirection: Axis.horizontal,
                     children: [
                        getDrug('assets/1drug.jpg',' '),
                        SizedBox(width: 10.0),
                        getDrug('assets/2drug.jpg',''),
                        SizedBox(width: 10.0),
                        getDrug('assets/4drug.jpg',''),
                        SizedBox(width: 10.0),
                        getDrug('assets/8drug.jpg',''),
                        SizedBox(width: 10.0),
                        getDrug('assets/7drug.jpg',''),
                        SizedBox(width: 10.0),
                        getDrug('assets/3drug.jpg',''),
                        SizedBox(width: 10.0),
                        getDrug('assets/5drug.jpg',''),
                        SizedBox(width: 10.0),
                        getDrug('assets/6drug.jpg',''),
                        SizedBox(width: 10.0),
                        getDrug('assets/9drug.jpg',''),
                     ],
                  ),
               ),
               SizedBox(height:40.0),
               Container(
                   height: 40.0,
                   color: Colors.transparent,
                   child: Container(

                       decoration: BoxDecoration(
                           border: Border.all(
                               color: Colors.amber,
                               style: BorderStyle.solid,
                               width: 2.0
                           ),
                           color: Colors.transparent,
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text('ملحقات هواتف',
                                style: TextStyle(
                                   fontWeight: FontWeight.bold,

                                ),
                             )
                          ],
                       )
                   )
               ),
               Container(
                  height: 200.0,
                  child: ListView(
                     padding: EdgeInsets.only(left: 20.0, right: 20.0),
                     scrollDirection: Axis.horizontal,
                     children: [
                        getAx('assets/phones/21/01.jpeg',' '),
                        SizedBox(width: 10.0),
                        getAx('assets/phones/21/02.jpeg',''),
                        SizedBox(width: 10.0),
                        getAx('assets/phones/21/04.jpeg',''),
                        SizedBox(width: 10.0),
                        getAx('assets/phones/21/08.jpeg',''),
                        SizedBox(width: 10.0),
                        getAx('assets/phones/21/07.jpeg',''),
                        SizedBox(width: 10.0),
                        getAx('assets/phones/21/09.jpeg',''),
                        SizedBox(width: 10.0),
                        getAx('assets/phones/21/03.jpeg',''),
                        SizedBox(width: 10.0),
                        getAx('assets/phones/21/05.webp',''),
                        SizedBox(width: 10.0),
                        getAx('assets/phones/21/06.jpeg',''),
                     ],
                  ),
               ),
            ],
         ),
      );
   }
// slide show for the items
   getWomen(String imgPath, String name){
      return Column(
         children: [
            Container(
               height: 200.0,
               width: 100.0,
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover
                  ),
               ),
            ),
            InkWell(
               onTap: (){
                  //selectShop(name);
               },
               child: Container(
                  //height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(7.0),
                     // color: getSelectedShop(name),
                  ),
               ),
            )
         ],
      );
   }

   // selectShop(name){
   //   setState(() {
   //     selectedShop = name;
   //   });
   // }
   // Color getSelectedShop(name){
   //   // Object slectedShop;
   //   if (name == slectedShop){
   //     return Colors.amber.withOpacity(0.3);
   //   } else {
   //     return Colors.transparent;
   //   }
   // }

   // Men dresses function
   getMen(String imgPath, String name){
      return Column(
         children: [
            Container(
               height: 200.0,
               width: 100.0,
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover
                  ),
               ),
            ),
            InkWell(
               onTap: (){
                  //selectShop(name);
               },
               child: Container(
                  //height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(7.0),
                     // color: getSelectedShop(name),
                  ),
               ),
            )
         ],
      );
   }

   // Phones Gallery
   getPhone(String imgPath, String name){
      return Column(
         children: [
            Container(
               height: 200.0,
               width: 100.0,
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover
                  ),
               ),
            ),
            InkWell(
               onTap: (){
                  //selectShop(name);
               },
               child: Container(
                  //height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(7.0),
                     // color: getSelectedShop(name),
                  ),
               ),
            )
         ],
      );
   }

// Drugs Gallery
   getDrug(String imgPath, String name){
      return Column(
         children: [
            Container(
               height: 200.0,
               width: 100.0,
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover
                  ),
               ),
            ),
            InkWell(
               onTap: (){
                  //selectShop(name);
               },
               child: Container(
                  //height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(7.0),
                     // color: getSelectedShop(name),
                  ),
               ),
            )
         ],
      );
   }
   // Accessories Gallery
   getAx(String imgPath, String name){
      return Column(
         children: [
            Container(
               height: 200.0,
               width: 100.0,
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover
                  ),
               ),
            ),
            InkWell(
               onTap: (){
                  //selectShop(name);
               },
               child: Container(
                  //height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(7.0),
                     // color: getSelectedShop(name),
                  ),
               ),
            )
         ],
      );
   }
// list of my item shows
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