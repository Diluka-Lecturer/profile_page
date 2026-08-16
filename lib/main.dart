import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile(),
  ));
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int points = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("My Profile"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          // TODO 1: Replace the Placeholder() widget below with a Column.
          // - Set mainAxisAlignment to MainAxisAlignment.start
          // - Set crossAxisAlignment to CrossAxisAlignment.start
          child: const Placeholder(),

          /*
          TODO 2: Inside the Column's 'children' array, build the following structure:
          
          1. Center widget containing a CircleAvatar (radius: 80.0, backgroundImage: AssetImage("assets/profile.png"))
          2. Divider (height: 20, thickness: 2, color: Colors.black)
          3. SizedBox (height: 10)
          4. Text ("Name", style: bold, size 20, color: Colors.black)
          5. SizedBox (height: 10)
          6. Text ("Your Name", style: size 20)
          7. SizedBox (height: 30)
          8. Text ("Email", style: bold, size 20, color: Colors.black)
          9. SizedBox (height: 10)
          
          TODO 3: Create a Row widget for the email details. Inside the Row's children:
          
          1. Icon (Icons.email, color: Colors.black)
          2. SizedBox (width: 10)
          3. Text ("your.email@nsbm.ac.lk", style: size 20)
          
          TODO 4: Below the email Row, add spacing and the Points label:
          
          1. SizedBox (height: 30)
          2. Text ("Points", style: bold, size 20, color: Colors.black)
          3. SizedBox (height: 10)
          
          TODO 5: Create another Row widget for the points display. Inside its children:
          
          1. Icon (Icons.star, color: Colors.black)
          2. SizedBox (width: 10)
          3. Text ("$points", style: size 20)  <-- This uses string interpolation to show the variable!
          */
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          // TODO 6: Call setState() here and increment the 'points' variable by 1
          
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}