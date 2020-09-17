import 'package:flutter/material.dart';
import 'package:quiz_world/FakeBackEnd/QuesBank.dart';
import 'package:quiz_world/models/Ques.dart';


class TrueFalse extends StatefulWidget {


  @override
  _TrueFalseState createState() => _TrueFalseState();
}

class _TrueFalseState extends State<TrueFalse> {
 List<Ques> quesList;
  int quesIndex;
@override
initState(){
super.initState();
quesList=QuesBank.returnQues();
setState((){
  quesList=quesList;
});
quesIndex=0;
Ques quiz=  new Ques(1,"Inertia is a vector quantity. It has both magnitude and direction.","false",4);
print(quiz.quesTitle);
print(quiz.getQuesTitle);

}
  @override
  Widget build(BuildContext context) {
     return Scaffold(

      body: SafeArea(
        //The main Column
         child: Column(
              
          children: <Widget>[
         SizedBox(height:5),
        //first row for score and timer 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[ 
                      //second row for score
                      Row(
          children: <Widget>[
           Text("Score:",
           style:TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
           )

           
           ),
           Text(3.toString(),
              style:TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
           )),


          ],
      //third row for timer 

          ),
          
           Row(
          children: <Widget>[
           Text("Timer:",
           style:TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
           )

           
           ),
           Text(4.toString(),
              style:TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
           )),


          ],
      //second row for timer 

          ),
        
       


          ]
        ),
        //end of Row for timer and score
          //begin question display 
       Center(
            child: Column(
              children: <Widget>[
                Text("AA"
               //   quesList[quesIndex].getQuesTitle
                ),
              ],
            ),
          ) 
          ],
        ),
      ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
