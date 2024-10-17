// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Exam App',
//       theme: ThemeData(
//         primaryColor: Colors.blue,
//         textTheme: TextTheme(
//           displayLarge: TextStyle(
//             fontSize: 32,
//             fontWeight: FontWeight.bold,
//             fontFamily: 'Roboto',
//           ),
//           bodyLarge: TextStyle(
//             fontSize: 16,
//             fontFamily: 'Roboto',
//             color: Colors.grey[700],
//           ),
//         ),
//         scaffoldBackgroundColor: Colors.lightBlue[50],
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Exam App'),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('Settings tapped!'),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: MyHomePage(),
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool _isExpanded = false;
//   final List<String> _fruits = ['Apple', 'Banana', 'Orange', 'Mango', 'Grapes'];

//   void _toggleExpand() {
//     setState(() {
//       _isExpanded = !_isExpanded;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Center(
//           child: Text(
//             'Welcome to the Flutter Exam!',
//             style: Theme.of(context).textTheme.displayLarge,
//           ),
//         ),
//         SizedBox(height: 20),
//         Center(
//           child: Image.asset(
//             'assets/image1.png',
//             width: 150,
//             height: 150,
//           ),
//         ),
//         SizedBox(height: 20),
//         Center(
//           child: Image.asset(
//             'assets/image2.png',
//             width: 150,
//             height: 150,
//           ),
//         ),
//         SizedBox(height: 20),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: Text(
//             'BAHALA NANI',
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//         ),
//         SizedBox(height: 20),

//         GestureDetector(
//           onTap: _toggleExpand,
//           child: AnimatedContainer(
//             duration: const Duration(milliseconds: 300),
//             curve: Curves.easeInOut,
//             margin: const EdgeInsets.symmetric(vertical: 20),
//             width: _isExpanded ? 150 : 100,
//             height: _isExpanded ? 150 : 100,
//             decoration: BoxDecoration(
//               color: Colors.green,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             alignment: Alignment.center,
//             child: Text(
//               _isExpanded ? 'Hi!' : 'Hello!',
//               style: const TextStyle(color: Colors.white, fontSize: 18),
//             ),
//           ),
//         ),
        
//         SizedBox(height: 20),

//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: ElevatedButton.icon(
//                 onPressed: () {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Confirmation Successful!')),
//                   );
//                 },
//                 icon: Icon(Icons.check),
//                 label: Text('Confirm'),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 15),
//                 ),
//               ),
//             ),
//             SizedBox(width: 20),
//             Expanded(
//               child: ElevatedButton.icon(
//                 onPressed: () {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Action Canceled')),
//                   );
//                 },
//                 icon: Icon(Icons.close),
//                 label: Text('Cancel'),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 15),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 40),
//         Text(
//           'Fruit List:',
//           style: Theme.of(context).textTheme.displayLarge,
//         ),
//         SizedBox(
//           height: 200,
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: _fruits.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 leading: Icon(Icons.local_florist),
//                 title: Text(_fruits[index]),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mark Angelo Sab_MidtermExam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: Colors.grey[800],
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 6,
        ),
      ),
      home: ItemListScreen(),
    );
  }
}

class ItemListScreen extends StatefulWidget {
  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  final List<Map<String, dynamic>> items = [
    {'name': 'Jarred', 'added': false},
    {'name': 'Harvey', 'added': false},
    {'name': 'Nean', 'added': false},
    {'name': 'France', 'added': false},
    {'name': 'Jomarr', 'added': false},
    {'name': 'Aljay', 'added': false},
    {'name': 'Joshua', 'added': false},
    {'name': 'Nikko', 'added': false},
    {'name': 'Dan', 'added': false},
    {'name': 'Louie', 'added': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mark Angelo Sab_MidtermExam'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CardWidget(
                  itemName: items[index]['name'],
                  isAdded: items[index]['added'],
                  onDetailsPressed: () {
                    _showDetailsDialog(items[index]['name']);
                  },
                  onAddPressed: () {
                    setState(() {
                      items[index]['added'] = !items[index]['added'];
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showDetailsDialog(String itemName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Item Details'),
          content: Text('Details of $itemName.'),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class CardWidget extends StatelessWidget {
  final String itemName;
  final bool isAdded;
  final VoidCallback onDetailsPressed;
  final VoidCallback onAddPressed;

  const CardWidget({
    Key? key,
    required this.itemName,
    required this.isAdded,
    required this.onDetailsPressed,
    required this.onAddPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(itemName, style: TextStyle(fontSize: 18)),
            Row(
              children: [
                TextButton(
                  onPressed: onDetailsPressed,
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.blue.shade50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Details',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: onAddPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isAdded ? Colors.green : Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(isAdded ? 'Added' : 'Add'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


