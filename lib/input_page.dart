
import 'package:bmi_calculator/constantFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
import 'constantFile.dart';


enum Gender  {
  male,
  female,
}



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  int sliderHeight=180;
  int sliderweight=60;


  @override
  Widget build(BuildContext context) {
    var malecolor;
    var feMaleColor;
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Row(
              children: [
                Expanded(
                    child: RepeatContainerCode(
                      onPressed: (){
                        setState(() {
                          selectGender=Gender.male;
                        });
                      },
                      colors: selectGender==Gender.male?activeColour:deActiveColour,
                      cardWidget: RepeatTextandIconWidget(
                        iconData: FontAwesomeIcons.male,
                        label: 'Male',
                      ),
                    ),
                  ),

                Expanded(
                  child: RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        selectGender=Gender.female;
                      });
                    },
    colors: selectGender==Gender.female?activeColour:deActiveColour,
                    cardWidget: RepeatTextandIconWidget(
                      iconData: FontAwesomeIcons.female,
                      label: 'Female',

                  ),
                ),),
              ],
            ),),
            Expanded(child: RepeatContainerCode(
              colors: Color(0xFF1D1E33),
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: KLabelStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        sliderHeight.toString(),
                        style: KNumberStyle,

                      ),
                      Text(
                        'cm',
                        style: KLabelStyle,
                      ),


                    ],
                  ),
                  Slider(
                    value: sliderHeight.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue){
                      setState(() {
                        sliderHeight = newValue.round();
                      });
                    },
                  ),

                ],
              ),
            ),),
            Expanded(child: Row(
              children: [
                Expanded(child: RepeatContainerCode(
                  colors: Color(0xFF1D1E33),
                  cardWidget: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text(
                        'Weight',
                        style: KLabelStyle,
                      ),
                      Text(
                        sliderweight.toString(),
                        style: KNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                        ],
                      ),

                    ],
                  ),


                ),),
                Expanded(child: RepeatContainerCode(
                  colors: Color(0xFF1D1E33),
                ),),
              ],
            ),),
          ],
        )
    );
  }
}





