import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter_tutorials_and_quizzes/0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'SplashScreen_GenerateQuizzes.dart';

String Result="";
Color TxtClr;

String TxtSol="Answer Is:\n"
    "body:SplashScreen(\n"
    " seconds:5,\n"
    " navigateAfterSeconds:Menu(),\n"
    " title:Text('SplashScreen Quizz'),\n"
    " image:Image.asset('Logo.png'),\n"
    " photoSize:175,\n"
    " backgroundColor:Colors.blue,\n"
    " loaderColor:Colors.yellow,\n"
    " loadingText:Text('Getting Page Ready!'),\n"
    ")\n";


TextEditingController T1=new TextEditingController();
TextEditingController T2=new TextEditingController();


typedef void OnError(Exception exception);

class SplashScreenQ2 extends StatefulWidget {
  @override
  _SplashScreenQ2State createState() => new _SplashScreenQ2State();
}

class _SplashScreenQ2State extends State<SplashScreenQ2> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState(){
    super.initState();
    initPlayer();
  }

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    audioCache.play('Music/Tap.mp3');
  }

  void PlayWinSound() async{
    audioCache.play('Music/Success.mp3');
  }

  void PlayLoseSound() async{
    audioCache.play('Music/Wrong.mp3');
  }

  void testAlert(BuildContext context) {
    var alert = AlertDialog(
        title:Text(
          Result,
          style: TextStyle(
            color: TxtClr,
            fontFamily:"Lobster",
          ),
        ),
        content:
        Container(
          height: 390,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(color: Colors.black,),
              Text(
                TxtSol,
                style: TextStyle(
                  fontSize:12,
                  color: Colors.cyan,
                  fontFamily:"Lora",
                ),
              ),
              SizedBox(height: 27,),
              SizedBox(
                  width: double.infinity,
                  child:
                  RaisedButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Great! Load Another Quizz ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily:"PT Mono",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: (){
                      PlayTapSound();
                      Navigator.of(context,rootNavigator: true).pop('dialog');
                      if(RandQuizz==false){
                        Generate_SplashScreen_Quiz(context);
                      }
                      else{
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>cl_RandomQuizz()));
                      }
                    },
                  )
              ),
              SizedBox(height: 7,),
              SizedBox(
                  width: double.infinity,
                  child:
                  RaisedButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Thanks! Get Me Back To Menu ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily:"PT Mono",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: (){
                      PlayTapSound();
                      Navigator.of(context,rootNavigator: true).pop('dialog');
                    },
                  )
              ),
            ],
          ),
        )
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: (){
                PlayTapSound();
              },
            ),
            title: Text("SplashScreen Quizz"),
          ),
          body:
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30,),
                    Text(
                      "Fill The Missing Fields To Make Splash Screen Navigate To Menu Page Menu() After That Loading Has Finished",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PT Mono"
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                          "import 'package:flutter/material.dart';\n"
                          "import 'package:splashscreen/splashscreen.dart';\n\n"

                          "void main() {\n"
                          "  runApp(Quizz());\n"
                          "}\n\n"

                          "class Quizz extends StatefulWidget {\n"
                          " @override\n"
                          "  QuizzState createState() => new QuizzState();\n"
                          "}\n\n"

                          "class QuizzState extends State<Quizz>{\n\n"
                          " @override\n"
                          " void initState(){\n"
                          "  super.initState();\n"
                          " }\n\n"

                          " Widget build(BuildContext context){\n"
                          " return MaterialApp(\n"
                          "  debugShowCheckedModeBanner:false,\n"
                          "  title:'SplashScreen Quizz',\n"
                          "  home:Scaffold(\n"
                          "  body:SplashScreen(\n"
                          "  seconds:5,\n",
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width:6,),
                        Container(
                          width:200,
                          child: TextField(
                            controller: T1,
                            autofocus: true,
                            maxLength:20,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(":"),
                        Container(
                          width:60,
                          child: TextField(
                            controller: T2,
                            maxLength:6,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(","),
                      ],
                    ),



                    Text(
                          "         title:\n"
                          "           Text('SplashScreen Quizz'),\n"
                          "         image:Image.asset('Logo.png'),\n"
                          "         photoSize:175,\n"
                          "         backgroundColor:Colors.blue,\n"
                          "         loaderColor:Colors.yellow,\n"
                          "         loadingText:Text('Getting Page Ready!'),\n"
                          "        ),\n"
                          "      ),\n"
                          "    );\n"
                          "  }\n"
                          "}\n\n"

                          "class Menu extends StatelessWidget{\n"
                          " @override\n"
                          " Widget build(BuildContext context){\n"
                          "  return MaterialApp(\n"
                          "   debugShowCheckedModeBanner: false,\n"
                          "   title:'Loaded Page',\n"
                          "   home:Scaffold(\n"
                          "   body:\n"
                          "    Center(\n"
                          "     child:\n"
                          "      Text(\n"
                          "       'Page Loaded!',\n"
                          "      ),\n"
                          "    ),\n"
                          "   ),\n"
                          "  );\n"
                          " }\n"
                          "}\n"
                    ),





                    SizedBox(height: 15,),
                    SizedBox(
                      width: double.infinity,
                      child:RaisedButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          "Check My Answer",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: (){

                          if(T1.text.trim()=="navigateAfterSeconds" && T2.text.trim()=="Menu()" ){
                            TxtClr=Colors.green;
                            PlayWinSound();
                            Result="Correct Answer";
                          }
                          else{
                            TxtClr=Colors.red;
                            PlayLoseSound();
                            Result="Wrong Answer";
                          }
                          T1.text="";
                          T2.text="";
                          testAlert(context);
                        },
                      ),
                    )

                  ],
                ),
              )
            ],
          )
      ),
    );
  }

}



