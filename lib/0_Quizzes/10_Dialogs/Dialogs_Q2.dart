import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';


String Dialogs_Q2_TxtSol =
    "Alert dialog = new AlertDialog(\n"
    " title:Text('Hi'),\n"
    " content:Text('Hello World'),\n"
    ");\n"
    "showDialog(\n"
    " context:context,\n"
    " child  :dialog,\n"
    ");\n";


String Dialogs_Q2_Question = "Fill The Missing Fields To Show An Alert Dialog With title Having Text Hi And Content Text Hello World";

var Dialogs_Q2_T1_Controller = new TextEditingController();
var Dialogs_Q2_T1_Answer = "content";

var Dialogs_Q2_T2_Controller = new TextEditingController();
var Dialogs_Q2_T2_Answer = "showDialog";

var Dialogs_Q2_T3_Controller = new TextEditingController();
var Dialogs_Q2_T3_Answer = "dialog";


List Dialogs_Q2_list = [
  Text(
        "import 'package:flutter/material.dart';\n\n"

        "void main() {\n"
        "  runApp(Quizz());\n"
        "}\n\n"

        "class Quizz extends StatelessWidget{\n"
        "  @override\n"
        "  Widget build(BuildContext context) {\n"
        "    return MaterialApp(\n"
        "     debugShowCheckedModeBanner:false,\n"
        "      title:'Quizz',\n"
        "        home:Scaffold(\n"
        "         appBar:AppBar(\n"
        "            title:Text('Dialogs Quizz'),\n"
        "         ),\n"
        "         body:Center(\n"
        "          child:RaisedButton(\n"
        "           child:Text('Show Dialog'),\n"
        "            onPressed: (){\n"
        "             Alert dialog = new AlertDialog(\n"
        "              title:Text('Hi'),\n"
  ),
  CmpQuizz_TextField_Text(
    Spacing: 76,
    TC1_Controller:Dialogs_Q2_T1_Controller,
    TC1_Width: Dialogs_Q2_T1_Answer.length * 10.0,
    TC1_MaxLength: Dialogs_Q2_T1_Answer.length,
    Text1:":Text('Hello World'),",
  ),
  Text("          );\n"),
  CmpQuizz_TextField_Text(
    Spacing: 76,
    TC1_Controller:Dialogs_Q2_T2_Controller,
    TC1_Width: Dialogs_Q2_T2_Answer.length * 10.0,
    TC1_MaxLength: Dialogs_Q2_T2_Answer.length,
    Text1:"(",
  ),
  Text("     context:context,\n"),
  CmpQuizz_Text_TextField_Text(
    Spacing: 76,
    Text1:"child:",
    TC1_Controller:Dialogs_Q2_T3_Controller,
    TC1_Width: Dialogs_Q2_T3_Answer.length * 10.0,
    TC1_MaxLength: Dialogs_Q2_T3_Answer.length,
    Text2:",",
  ),


  Text(
        "      );\n"
        "     }\n"
        "    ),\n"
        "   ),\n"
        "  );\n"
        " }\n"
        "}\n",
  ),


];
