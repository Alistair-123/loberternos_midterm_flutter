import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loberternos_MidtermExam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List of cars as product names
  List<String> cars = [
    'Tesla Model S',
    'Ford Mustang',
    'Chevrolet Camaro',
    'BMW M3',
    'Audi R8',
    'Mercedes AMG GT',
    'Lamborghini Huracan',
    'Porsche 911',
    'Ferrari 488',
    'Nissan GTR',
  ];

  // Store the added status for each item
  List<bool> isAdded = List.filled(10, false);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('YourName_MidtermExam'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            return Center(
              child: SizedBox(
                width: screenWidth * 0.75, // Set to 75% of the screen width
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  color: isAdded[index] ? Colors.green : Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          cars[index],
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('${cars[index]} details');
                        },
                        child: Text('Details'),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isAdded[index] = true;
                          });
                        },
                        child: Text(isAdded[index] ? 'Added' : 'Add'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
