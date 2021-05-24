import 'dart:io';

import 'CalculatorBrain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(calculator());
}

class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  CalculatorBrain c = new CalculatorBrain();
  String result = '0';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Builder(
        builder: (context) => WillPopScope(
          onWillPop: () async {
            bool res = await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Confirm Exit'),
                      content: Text('Are you Sure you want to close this app?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text('Yes')),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: Text('No')),
                      ],
                    ));
            return Future.value(res);
          },
          child: Scaffold(
            backgroundColor: Colors.black,
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              toolbarHeight: 22.0,
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text('Calculator'),
            ),
            body: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 27.0),
                      color: Colors.black,
                      alignment: Alignment.bottomRight,
                      child: Text(
                        result,
                        style: TextStyle(fontSize: 55.0, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Divider(
                    thickness: 2.0,
                    color: Colors.blueGrey[700],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Color(0xFFB58A589),
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('+/-');
                          });
                        },
                        child: Text("+/-",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 118.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Color(0xFFB58A589),
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('%');
                          });
                        },
                        child: Text("%",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 118.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Color(0xFFB58A589),
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('.');
                          });
                        },
                        child: Text('.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('7');
                          });
                        },
                        child: Text("7",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('8');
                          });
                        },
                        child: Text("8",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('9');
                          });
                        },
                        child: Text("9",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Color(0xFFB58A589),
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('+');
                          });
                        },
                        child: Text("+",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('4');
                          });
                        },
                        child: Text("4",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('5');
                          });
                        },
                        child: Text("5",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('6');
                          });
                        },
                        child: Text("6",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Color(0xFFB58A589),
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('-');
                          });
                        },
                        child: Text("-",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('1');
                          });
                        },
                        child: Text("1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          setState(() {
                            setState(() {
                              result = c.buttonPressed('2');
                            });
                          });
                        },
                        child: Text("2",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('3');
                          });
                        },
                        child: Text("3",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Color(0xFFB58A589),
                        onPressed: () {
                          setState(() {
                            setState(() {
                              result = c.buttonPressed('x');
                            });
                          });
                        },
                        child: Text("x",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.red,
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('AC');
                          });
                        },
                        child: Text(
                          'AC',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25.0,
                              fontFamily: 'Sans Sheriff',
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          setState(() {
                            setState(() {
                              result = c.buttonPressed('0');
                            });
                          });
                        },
                        child: Text("0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Color(0xFFB58A589),
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('=');
                          });
                        },
                        child: Text("=",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0.0),
                        minWidth: 75.0,
                        height: 75.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        color: Color(0xFFB58A589),
                        onPressed: () {
                          setState(() {
                            result = c.buttonPressed('/');
                          });
                        },
                        child: Text("/",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Sans Sheriff',
                                color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
