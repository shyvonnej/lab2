import 'package:flutter/material.dart';
import 'package:tmjresources/model/user.dart';
import 'mainpage.dart';

class CartPage extends StatefulWidget {
  final User user;
  const CartPage({Key? key, required this.user}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TMJ Resources'),
        ),
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:10, right:10),
          child:
            Column(mainAxisAlignment: MainAxisAlignment.center,
            children:[
            const SizedBox(height: 20,),
            const Text("CART", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600,)),
            const SizedBox(height: 20,),
              Padding(
                padding:const EdgeInsets.symmetric(horizontal:10.0),
                child:Container(
                height:2.0,
                width:400.0,
                color:Colors.white,),),
            const SizedBox(height: 450),
            Padding(
                padding:const EdgeInsets.symmetric(horizontal:0),
                child:Container(
                height:2.0,
                width:400.0,
                color:Colors.white,),),
              const SizedBox(height: 15),
              const Text("Total Balance:            RM      ", style: TextStyle(fontSize:22)),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 50)),
                child: const Text('Check Out'),
                onPressed: _checkoutdialog,
              ),
              ]
            ),
          ),
        )
    );
  }

  void _checkoutdialog() {
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        title: const Text("Check Out", style: TextStyle(color: Colors.white)),
        content: const Text("Are you sure?", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          TextButton(
          child: const Text("Yes", style: TextStyle(color: Colors.tealAccent)),
          onPressed: () { Navigator.of(context).pop();
          _payatcounter();
          },
        ),
          TextButton(
            child: const Text("No", style: TextStyle(color: Colors.tealAccent)),
            onPressed:(){
              Navigator.of(context).pop();
            }
          )]
      );
    }
  );
}

  void _payatcounter() {
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        title: const Text("Thank You", style: TextStyle(color: Colors.white)),
        content: const Text("Please pay at the counter.", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          TextButton(
          child: const Text("Back",style: TextStyle( color: Colors.teal,),),
          onPressed: () => { Navigator.pushReplacement(context,
          MaterialPageRoute(
          builder: (BuildContext context) => MainPage(user: widget.user))),
          }
          )
        ]
      );
    });
  }
}