import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
            const Text("HISTORY", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600,)),
            const SizedBox(height: 20,),
              Padding(
                padding:const EdgeInsets.symmetric(horizontal:10.0),
                child:Container(
                height:2.0,
                width:400.0,
                color:Colors.white,),),
              ]
            )
          ),
        )
    );
  }
}