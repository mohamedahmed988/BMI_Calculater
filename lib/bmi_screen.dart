import 'dart:math';

import 'package:bmi_calculater/bmi_result_screen.dart';
import 'package:flutter/material.dart';
class BmiScreen extends StatefulWidget {

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale =true;
  double height=120.0;
  int weight =40;
  int age =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,

        title: Text(
          'BMI Calculater',

        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;


                        });

                      },

                      child: Container(

                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,


                          children: [
                            Image(
                              image: AssetImage('images/Male_35764.png'),
                              height: 100.0,
                              width: 100.0,





                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('Male',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),

                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.deepPurple :Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(()
                            {
                              isMale=false;
                            });
                      },


                      child: Container(

                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,


                          children: [
                            Image(image:AssetImage('images/Female_35792(1).png'),
                              height: 100.0,
                              width: 100.0,




                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('Female',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),

                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale ? Colors.deepPurple :Colors.grey[400],
                        ),
                      ),
                    ),
                  ),

                ],


              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.baseline ,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged:(value){
                          setState((){
                            height=value;
                          });
                          print(value.round());
                        } ,
                    )


                  ],


                ),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],

                ),
              ),
            ),
          ),
          Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: TextStyle(
                                  fontSize:25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '$weight',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [


                                  FloatingActionButton(
                                    onPressed: (){
                                      setState((){
                                        weight--;
                                      });
                                    },
                                      mini: true,
                                      child: Icon(
                                        Icons.remove,
                                      ),
                                    heroTag: 'weight-',



                                  ),

                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  FloatingActionButton(

                                    onPressed: (){
                                      setState((){
                                        weight++;
                                      });
                                    },
                                    heroTag: 'weight+',
                                    mini: true,

                                    child: Icon(
                                      Icons.add,
                                    ),


                                  ),



                                ],
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[400],

                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: TextStyle(
                                  fontSize:25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '$age',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [



                                  FloatingActionButton(
                                    onPressed: (){
                                      setState((){
                                        age--;
                                      });
                                    },
                                    heroTag: 'age-',
                                      mini: true,
                                      child: Icon(
                                        Icons.remove,

                                      ),





                                  ),

                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState((){
                                        age++;
                                      });
                                    },
                                      mini: true,
                                      child: Icon(
                                        Icons.add,
                                      ),
                                    heroTag: 'age+',

                                  ),
                                ],
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[400],

                          ),
                        ),
                      ),






                    ],


                  ),
                ),
              ),


          Container(
              width: double.infinity,
              color: Colors.deepPurple,
              child: MaterialButton(
                  onPressed:(){

                    var result =weight / pow(height / 100, 2);
                    print(result.round());
                    Navigator.push(context, MaterialPageRoute(
                        builder:(context)=> BMIResultScreen(
                          age: age,
                          isMale: isMale,
                            result: result.round(),
                        ),
                    ),

                    );
                  },
                height: 50.0,
                child: Text('CALCULATE',
                  style: TextStyle(
                    color: Colors.white
                  ),




              ),

              ),
            ),

      ],

      ),
    );
  }
}
