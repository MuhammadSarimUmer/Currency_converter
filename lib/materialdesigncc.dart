import 'package:flutter/material.dart';


class MaterialDesignWidget extends StatefulWidget{
  const MaterialDesignWidget({super.key});
  @override
  State<MaterialDesignWidget> createState() => _MaterialDesignWidgets();
}

class _MaterialDesignWidgets extends State<MaterialDesignWidget>{
   double result = 0;
    TextEditingController amountcontroller = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(backgroundColor: Colors.amberAccent,
      
      title: const Text('Currency Converter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      centerTitle: true,
      elevation: 0,
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            
            Text(
              'PKR ${result.toString()}',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,),
            ),
            Container(
             
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: amountcontroller,
                keyboardType: TextInputType.number,
                style: TextStyle(fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  hintText: 'Enter the Amount in USD',
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
            ),
    
            ElevatedButton(onPressed: (){
           setState(() {
            double? value  = double.tryParse((amountcontroller.text.trim()));
           result = double.parse(((value ?? 0)*283.47).toStringAsFixed(2));
             
           });
            },
            style:ButtonStyle(
              elevation: WidgetStatePropertyAll(3),
              backgroundColor:WidgetStatePropertyAll(Colors.blue[50],),
            
            fixedSize: WidgetStatePropertyAll(Size(150,50)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
            ),
             child: const Text('Convert',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),
             ),
             
             ),
          ],
        ),
      ),
    );

}
}
