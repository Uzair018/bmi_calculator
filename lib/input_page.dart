
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';

const activeColour = Color(0xFF1D1E33);
const deActiveColour = Color(0xFF111328);
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


  @override
  Widget build(BuildContext context) {
    var malecolor;
    var feMaleColor;
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
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
            ),),
            Expanded(child: Row(
              children: [
                Expanded(child: RepeatContainerCode(
                  colors: Color(0xFF1D1E33),
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




