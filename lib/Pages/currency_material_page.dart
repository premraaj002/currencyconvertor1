import 'package:currency_converter/colors/colors.dart';

import 'package:flutter/material.dart';

// 1 .Create a variable that stores the converted currency value
// 2. Create a function that multiplies the value given by the textfind 81
// 3. stored the value in the variable that we created
// 4. Display the variable

class CurrencyMaterialPage extends StatefulWidget {
  const CurrencyMaterialPage({super.key});
  @override
  State<CurrencyMaterialPage> createState() => _CurrencyMaterialPage();
}

class _CurrencyMaterialPage extends State<CurrencyMaterialPage> {
  double result = 0;
  final textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    final fun = OutlineInputBorder(
      // Color (0XAARRGGBB)
      // 0xFF000000
      borderSide: const BorderSide(
          color: Colors.black, width: 1.3, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(60),
    );

    return Scaffold(
      backgroundColor: darkblue,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 20,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // int -> string integervalue.tostring()
            //string -> int.parse(stringvalue)
            Text(
              'INR ${result.toString()}',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
            //padding , container
            Container(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.greenAccent,
                  focusedBorder: fun,
                  enabledBorder: fun,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            //button

            // raised
            //appears like a text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  //debug,release,profile

                  setState(() {
                    result = double.parse(textEditingController.text) * 82.89;
                  });
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.greenAccent),
                  fixedSize: MaterialStatePropertyAll(Size(200, 60)),
                ),
                child: const Text('Convert'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
