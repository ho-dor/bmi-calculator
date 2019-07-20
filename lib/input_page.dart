import 'package:flutter/material.dart';
import 'result.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height=120;
  static const inactiveColor = 0xFF1d1e33;
  static const activeColor = 0xFF2d2e23;
  int maleCurrentColor = inactiveColor;
  int femaleCurrentColor = inactiveColor;
  int weight = 40;
  int age = 1;
  double bmi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              maleCurrentColor = activeColor;
                              femaleCurrentColor = inactiveColor;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.directions_walk,
                                color: Colors.white,
                                size: 80.0,),
                              Text("MALE",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blueGrey,
                              ),)
                            ],
                          ),
                        ),
                        margin: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Color(maleCurrentColor),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              femaleCurrentColor = activeColor;
                              maleCurrentColor = inactiveColor;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.pregnant_woman,
                              color: Colors.white,
                              size: 80.0,),
                              Text("FEMALE",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blueGrey,
                                ),)
                            ],
                          ),
                        ),
                        margin: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Color(femaleCurrentColor),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Heignt",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text(height.toString(),
                        style: TextStyle(
                          fontSize: 40.0
                          ),
                        ),
                        Text("cm",
                          style: TextStyle(
                              fontSize: 40.0
                          ),
                        ),
                      ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.pinkAccent,
                          inactiveTrackColor: Colors.white,
                          thumbColor: Colors.pink,
                          overlayColor: Color(0x29EB1555),
                      ),
                        child: Slider(
                          value: height.toDouble(),
                          onChanged: (double newValue){
                            setState(() {
                              height = newValue.round();
                            });
                          }
                          ,
                          min: 120,
                          max: 220,
                        ),
                      )
                    ],
                  ),
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1d1e33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Weight",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueGrey
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(weight.toString(),
                                style: TextStyle(
                                  fontSize: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Icon(Icons.remove,
                                    size: 40.0,
                                    color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Icon(Icons.add,
                                    size: 40.0,
                                    color: Colors.white,),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xFF1d1e33),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Age",
                              style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueGrey
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(age.toString(),
                                style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        age--;
                                      });
                                      },
                                    child: Icon(Icons.remove,
                                      size: 40.0,
                                      color: Colors.white,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(Icons.add,
                                      size: 40.0,
                                      color: Colors.white,),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xFF1d1e33),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 500.0,
                padding: EdgeInsets.all(10.0),
                color: Colors.pink,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      bmi = weight/((height/100)*(height/100));
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Result(bmi.toString())));
                  },
                  child: Center(
                      child: Text("Calculate")),
                ),
              )
            ],
          ),
        ));
  }
}
