import 'package:flutter/material.dart';

class MaterialDesignWidget extends StatelessWidget {
  const MaterialDesignWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                hintText: 'Enter the Amount in PKR',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 128, 127, 127),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                prefixIcon: Icon(Icons.attach_money),
                prefixIconColor: Colors.amber[800],

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(40),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
