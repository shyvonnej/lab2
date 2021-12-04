import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:tmjresources/model/user.dart';
import 'cartpage.dart';

class TabPage1 extends StatefulWidget {
  final User user;
  const TabPage1({Key? key, required this.user}) : super(key: key);

  @override
  State<TabPage1> createState() => _TabPage1State();
}

class _TabPage1State extends State<TabPage1> {
  late double screenHeight, screenWidth;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMJ Resources'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, size: 26.0),
            onPressed:(){
              Navigator.of(context).push(
                MaterialPageRoute(builder:(context) => CartPage(user:widget.user,))
              );
            }
          )
        ]
      ),
      body: Stack(
        children: [upperHalf(context), lowerHalf(context)],
      ),
    );
  }

upperHalf(BuildContext context) {
  return ImageSlideshow(
    /// Width of the [ImageSlideshow].
    width: double.infinity,
    /// Height of the [ImageSlideshow].
    height: 200,
    /// The page to show when first creating the [ImageSlideshow].
    initialPage: 0,
    /// The color to paint the indicator.
    indicatorColor: Colors.blue,
    /// The color to paint behind th indicator.
    indicatorBackgroundColor: Colors.grey,
    /// The widgets to display in the [ImageSlideshow].
    /// Add the sample image file into the images folder
    children: [
      Image.asset(
        'assets/images/imageslide1.jpg',
        fit: BoxFit.cover,
      ),
      Image.asset(
        'assets/images/imageslide2.jpg',
        fit: BoxFit.cover,
      ),
      Image.asset(
        'assets/images/imageslide3.jpg',
        fit: BoxFit.cover,
      ),
    ]
  );
}

lowerHalf(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: screenHeight/4),
      padding: const EdgeInsets.only(left: 5, right: 5), 
      child: Column(
      children:[
        const SizedBox(height: 25,),
        const Text("PRODUCTS", style: TextStyle(fontSize:26, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
        const SizedBox(height: 20,),
      Padding(
        padding:const EdgeInsets.symmetric(horizontal:10.0),
        child:Container(
        height:2.0,
        width:400.0,
        color:Colors.white)),
          const Expanded(child: Productgrid()),
      ],
    ),
  );
}
}

class Productgrid extends StatefulWidget {
  const Productgrid({Key? key}) : super(key: key);

  @override
  State<Productgrid> createState() => _ProductgridState();
}

class _ProductgridState extends State<Productgrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
      padding: const EdgeInsets.all(20), 
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      childAspectRatio: 1,
      children: <Widget>[
        Stack(children:[
        Container(
        padding: const EdgeInsets.all(2),
        child: Column(
        children: [
          Image.asset('assets/images/Jinro.png', fit: BoxFit.scaleDown),
          ],),
          color: Colors.blueGrey[200],
        ),
        Container(
          width: 300,
          color: Colors.black54,
          padding: const EdgeInsets.all(10),
          child: const Text("Jinro", style: TextStyle(fontSize: 10, color: Colors.white))
        ),
        ]
        ),
        Stack(children:[
        Container(
          padding: const EdgeInsets.all(2),
          child: Column( 
          children: [
            Image.asset('assets/images/kettle.jpg', fit: BoxFit.scaleDown),
            ],),
          color: Colors.blueGrey[200],
          ),
          Container(
          width: 300,
          color: Colors.black54,
          padding: const EdgeInsets.all(10),
          child: const Text("Kettle Potato Chips", style: TextStyle(fontSize: 10, color: Colors.white))
        ),
        ]
        ),
        Stack(children:[
        Container(
          padding: const EdgeInsets.all(2),
          child: Column( 
          children: [
            Image.asset('assets/images/fevertree.jpg', fit: BoxFit.scaleDown),
            ],),
          color: Colors.blueGrey[200],
          ),
          Container(
          width: 300,
          color: Colors.black54,
          padding: const EdgeInsets.all(10),
          child: const Text("Fever Tree Tonic", style: TextStyle(fontSize: 10, color: Colors.white))
        ),
        ]
        ),
        Stack(children:[
        Container(
          padding: const EdgeInsets.all(2),
          child: Column( 
          children: [
            Image.asset('assets/images/bundaberg.jpg', fit: BoxFit.scaleDown),
            ],),
          color: Colors.blueGrey[200],
          ),
          Container(
          width: 300,
          color: Colors.black54,
          padding: const EdgeInsets.all(10),
          child: const Text("Bundaberg Drinks", style: TextStyle(fontSize: 10, color: Colors.white))
        ),
        ]
        ),
        Stack(children:[
          Container(
          padding: const EdgeInsets.all(2),
          child: Column( 
          children: [
            Image.asset('assets/images/yobick.jpg', fit: BoxFit.scaleDown),
            ],),
          color: Colors.blueGrey[200],
          ),
          Container(
          width: 300,
          color: Colors.black54,
          padding: const EdgeInsets.all(10),
          child: const Text("Yobick Yogurt Drink", style: TextStyle(fontSize: 10, color: Colors.white))
        ),
        ]
        ),
        Stack(children:[
          Container(
          padding: const EdgeInsets.all(2),
          child: Column( 
          children: [
            Image.asset('assets/images/Vida-C.jpg', fit: BoxFit.scaleDown),
            ],),
          color: Colors.blueGrey[200],
          ),
          Container(
          width: 300,
          color: Colors.black54,
          padding: const EdgeInsets.all(10),
          child: const Text("Vida-C Drinks", style: TextStyle(fontSize: 10, color: Colors.white))
        ),
        ]
        ),
        ]
      );
  }
}