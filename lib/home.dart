import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/left_widget.dart';
import 'package:bmi_calculator/widgets/right_widget.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController _heightcontroller = TextEditingController();
  TextEditingController _weightcontroller = TextEditingController();
  double _bmiresult = 0;
  String _textresult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize:25)),
        backgroundColor: Colors.grey[600],
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: TextField(
                      controller: _heightcontroller,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Height m',
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.withOpacity(0.8),
                        ),
                      )),
                ),
                Container(
                  width: 150,
                  child: TextField(
                      controller: _weightcontroller,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Weight Kg',
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.withOpacity(0.8),
                        ),
                      )),
                )
              ],
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                double _h = double.parse(_heightcontroller.text);
                double _w = double.parse(_weightcontroller.text);
                setState(() {
                  _bmiresult = _w / (_h * _h);

                  if (_bmiresult < 18.5) {
                    _textresult = 'You\'re Underweight';
                  }
                  else if(_bmiresult >=18.5 && _bmiresult < 24){
                    _textresult = 'You have Healthy Weight';
                  }
                  else if(_bmiresult >=24 && _bmiresult <29.9){
                    _textresult = 'You\'re Overweight';
                  }
                  else{
                    _textresult = 'You\'re Obese';
                  }
                });
              },
              child: Text('Calculate',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  ),
            ),
            SizedBox(height: 50),
            Container(
                child: Text(
              _bmiresult.toStringAsFixed(2),
              style: TextStyle(fontSize: 90, color: Colors.blue[400]),
            )),
            SizedBox(height: 30),
            Visibility(
                visible: _textresult.isNotEmpty,
                child: Text(
                  _textresult,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.blue[400]),
                )),
            SizedBox(height: 40),
            left_bar(barwidth: 50),
            SizedBox(height: 20),
            left_bar(barwidth: 80),
            SizedBox(height: 20),
            left_bar(barwidth: 35),
            SizedBox(height: 20),
            right_bar(barwidth: 50),
            SizedBox(height: 20),
            right_bar(barwidth: 70),
          ],
        ),
      ),
    );
  }
}
