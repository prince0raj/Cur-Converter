import 'package:flutter/material.dart';

void main() {
  runApp(const MyNewApp());
}

class MyNewApp extends StatefulWidget {
  const MyNewApp({super.key});

  @override
  State createState() => _SomeWidgetStateConverter();
}

class _SomeWidgetStateConverter extends State {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 81;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const borderData = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(0, 0, 0, 0.2),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Currency converter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  result.toString(),
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                      hintText: "Please Enter The Amount",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      prefixIcon: Icon(Icons.monetization_on),
                      filled: true,
                      focusedBorder: borderData,
                      enabledBorder: borderData),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: convert,
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text("Convert"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


/***************************************************** StateLESS widget ************************************************/

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const borderData = OutlineInputBorder(
//       borderSide: BorderSide(
//         color: Color.fromRGBO(0, 0, 0, 0.2),
//       ),
//       borderRadius: BorderRadius.all(
//         Radius.circular(5),
//       ),
//     );
 
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Currency converter'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 child: const Text(
//                   '0',
//                   style: TextStyle(
//                     fontSize: 45,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 child: const TextField(
//                   decoration: InputDecoration(
//                       hintText: "Please Enter The Amount",
//                       hintStyle: TextStyle(
//                         color: Colors.black54,
//                       ),
//                       prefixIcon: Icon(Icons.monetization_on),
//                       filled: true,
//                       focusedBorder: borderData,
//                       enabledBorder: borderData),
//                   keyboardType: TextInputType.numberWithOptions(
//                     decimal: true,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: TextButton(
//                   onPressed: () {
//                     if (kDebugMode) {
//                       debugPrint("Button Clicked");
//                     }
//                   },
//                   style: TextButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     backgroundColor: Colors.black87,
//                     foregroundColor: Colors.white,
//                     minimumSize: const Size(double.infinity, 50),
//                   ),
//                   child: const Text("Convert"),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
