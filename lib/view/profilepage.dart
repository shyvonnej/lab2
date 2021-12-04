import 'package:flutter/material.dart';
import 'package:tmjresources/model/user.dart';

class ProfilePage extends StatefulWidget {
  final User user;
  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMJ Resources'),
      ),
      body: Container(
      padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
      child: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        },
      child: ListView(
      children: [
        const Text("Profile",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
        const SizedBox(height: 15,),
        Center(
          child: Stack(
          children: [
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
              border: Border.all(width: 4,color: Theme.of(context).scaffoldBackgroundColor),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 10))
                ],
              shape: BoxShape.circle,
              image: const DecorationImage(fit: BoxFit.cover,
              image: NetworkImage("https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80",))),
              ),
            Positioned(bottom: 0, right: 0,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                  width: 4,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                color: Colors.green,
                ),
              child: const Icon(Icons.edit, color: Colors.white,),
                    )),
                  ],
                ),
              ),
            const SizedBox(height: 50,),
            const Text("Name:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(widget.user.name.toString()),
            const SizedBox(height: 35,),
            const Text("Email:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(widget.user.email.toString()),
            const SizedBox(height: 35,),
            const Text("Phone:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(widget.user.phone.toString()),
            const SizedBox(height: 35,),
            const Text("Address:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(widget.user.address.toString()),
            const SizedBox(height: 35,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
                  ElevatedButton(
                    onPressed: null,
                    child: Text("CANCEL",style: TextStyle(fontSize: 14, letterSpacing: 2.2, color: Colors.black)),),
                  ElevatedButton(
                    onPressed: null,
                    child: Text("SAVE", style: TextStyle(fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}