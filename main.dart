import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.brown,
        brightness: Brightness.light,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{


// animating logo not working yet

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController =AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _iconAnimation =CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut
    );
    _iconAnimation.addListener(()=> this.setState((){}));
     _iconAnimationController.forward();
  }
// animation logo code  ends

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Login Demo App'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
         // Padding(
         //   padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 100.0),
          //  child: Image(
          //  image: AssetImage('assets/owl_logo.png'),
          //  fit: BoxFit.cover,
          //  color: Colors.black12,
          //  colorBlendMode: BlendMode.darken,
          //),
          //),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Image(
                   image: AssetImage('assets/owl_logo.png'),
                   fit: BoxFit.cover,
                ),
              ), 
              Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    )
                  ),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                        TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder()
                    ),
                    keyboardType: TextInputType.emailAddress,
                    maxLines: 1,
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0),
                  ),
               TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder()
                    ),
                    obscureText: true,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                  ),
                  Padding(padding: const EdgeInsets.only(top: 20.0),
                  ),
                  MaterialButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    elevation: 20.0,
                    child: Text('login'),
                    onPressed: () {
                      
                    },
                    splashColor: Colors.greenAccent,
                  ),
                    ],
                  ),
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}