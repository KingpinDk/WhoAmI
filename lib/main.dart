import 'package:flutter/material.dart';


void main() {
  runApp(const WhoAmI());
}

class WhoAmI extends StatefulWidget {
  const WhoAmI({Key? key}) : super(key: key);

  @override
  State<WhoAmI> createState() => _WhoAmIState();
}

class _WhoAmIState extends State<WhoAmI> {

  int bankbalance = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar:AppBar(
          backgroundColor: Colors.grey[850],
          titleSpacing: 10.0,
          title: const Text('Who Am I',
            style: TextStyle(
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
            ),)
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              bankbalance += 100;
            });
          },
          child: Text('Money'),
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/spidy.jpg'),
                  radius: 60.0,
                ),
              ),
              const Divider(height: 40.0,color: Colors.white,),
              const Text('Name:   Dharanikumaran S K',
                  style: TextStyle(
                  color: Colors.white54,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text('Nick Name:  DK',
              style: TextStyle(
              color: Colors.white54,
              fontStyle: FontStyle.normal,
              fontSize: 20.0,
            ),
          ),
              const SizedBox(height: 10.0),
              const Text('Mother Name:  Karthikayini S',
                style: TextStyle(
                  color: Colors.white54,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text('Father Name:  Selvaraj V',
                style: TextStyle(
                  color: Colors.white54,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text('Phone no:  9489153707',
                style: TextStyle(
                  color: Colors.white54,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text('Hobby:  Coding',
                style: TextStyle(
                  color: Colors.white54,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text('Aim:  Better than yesterday',
                style: TextStyle(
                  color: Colors.white54,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 30.0),
              Icon(Icons.account_balance_sharp,
              color: Colors.red),
              Text('Bank Balance = $bankbalance',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
        )
        )
    );
  }
}

