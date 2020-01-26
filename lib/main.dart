import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Session 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> names = ['Syed', 'Taha', 'Ali'];
  //returns a Text widget demonstrating use of definite loops
  Text _fullName(List<String> names) {
    String fullName = '';
    //foreach definite loop
    names.forEach((item) {
      fullName += (item + ' ');
    });
    //for loop (uncomment the following to use)
    // for (int i; i < names.length; i++) {
    //   fullName += (names[i] + ' ');
    // }
    return Text(fullName);
  }

//named parameters example
  _namedParamsExample(String firstName,
      {String middleName, @required String lastName}) {
    if (middleName != '' && middleName != null) {
      //the print() command outputs to debug console available in vs code
      print(
          '$firstName $middleName $lastName'); //'$' sign is used for string interpolation
    } else {
      print(firstName + ' ' + lastName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Learning Outcomes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text('Constants, Reserved Words'),
            Text('Variables, Expressions, Statements'),
            Text('Conditional Statements'),
            Text('Functions'),
            Text('Loops'),
            Text('Exception Handling'),
            //Google Classroom code
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'a6wevmt',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            //Not using the optional middleName parameter in the following invocation
            RaisedButton(
              onPressed: () => _namedParamsExample('Taha', lastName: 'Ali'),
              child: Text('Press Me'),
            )
            //uncomment the following to excute
            //_fullName(names),
          ],
        ),
      ),
    ));
  }
}
