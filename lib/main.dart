import 'package:flutter/cupertino.dart';
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
                'Profile',
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
                'Settings',
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
              'About',
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
              'Log Out',
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
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'v1.0.1',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: const Color(0xffffffff),
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
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 35.0,
          // to open the drawer
          onPressed: () => Scaffold.of(context).openDrawer(),
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
                listItem('assets/smartphones.jpg', 'هواتف', true),
                SizedBox(width: 5.0),
                listItem('assets/accessories.jpg', 'اكسيسوارات', true),
                SizedBox(width: 5.0),
                listItem('assets/md.jpg', ' ملبوسات رجالية', true),
                SizedBox(width: 5.0),
                listItem('assets/wd.jpg', 'ملبوسات نسائية ', true),
                SizedBox(width: 5.0),
                listItem('assets/drugs.jpg', 'ادوية', true),

              ],
            ),
          ),



          SizedBox(height: 10.0),
          // Women dresses
         Container(
           //listItem('assets/wali.jpg', '', false),
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
                 )
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
                getWomen('assets/jlabia.jpg','جلاليب نسائية'),
                SizedBox(width: 10.0),
                getWomen('assets/jlabia2.jpg',''),
                SizedBox(width: 10.0),
                getWomen('assets/jlabia3.jpg',''),
                SizedBox(width: 10.0),
                getWomen('assets/wali.jpg',''),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          // men dresses
          Container(
            height: 200.0,
            child: ListView(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              scrollDirection: Axis.horizontal,
              children: [
                getMen('assets/md.jpg','جلاليب نسائية'),
                SizedBox(width: 10.0),
                getMen('assets/jlabia2.jpg',''),
                SizedBox(width: 10.0),
                getMen('assets/jlabia3.jpg',''),
                SizedBox(width: 10.0),
                getMen('assets/wali.jpg',''),
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


// list of my item shows
  listItem(String imgPath, String name, bool available) {
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
            onPressed: () {},
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
