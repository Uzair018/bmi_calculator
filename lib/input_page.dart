
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';

const activeColour = Color(0xFF1D1E33);
const deActiveColour = Color(0xFF111328);



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deActiveColour;
  Color feMaleColor = deActiveColour;

  void updateColour(int gender) {
    if (gender == 1) {
      maleColor = activeColour;
      feMaleColor = deActiveColour;
    }
    if (gender == 2) {
      maleColor = activeColour;
      feMaleColor = deActiveColour;
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(2);
                      });
                    },
                    child: RepeatContainerCode(
                      colors: maleColor,
                      cardWidget: RepeatTextandIconWidget(
                        iconData: FontAwesomeIcons.male,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(child: RepeatContainerCode(
                  colors: feMaleColor,
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




