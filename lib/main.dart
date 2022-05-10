import 'package:flutter/material.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'Login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NicessmV3',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SplashFirst(),
    );
  }
}

class SplashFirst extends StatelessWidget {

  const SplashFirst({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(

            image: AssetImage("assets/splash/backgroundsplash.jpg"),
            fit: BoxFit.cover,

          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/splash/logo.png', height: 200,
                width: 220  ),
            Image.asset('assets/splash/famer-image.png',height: 300,
                width: 350, ),
            Container(
              child: Text('"Agriculture is our wisest pursuit, because it will in the end contribute most to real wealth, good morals and happiness."',style: TextStyle(color:Colors.black,fontSize:18,)),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(left: 25, right: 25,bottom: 100),
            ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Image.asset('assets/splash/slide-one-dot.png'),
                iconSize: 80,
                padding: const EdgeInsets.only(top: 20),
                onPressed: () {},
              ),

              IconButton(
                icon: Image.asset('assets/splash/slide-one-circle.png',width: 50.0, height: 50.0),
                iconSize: 20,
                padding: const EdgeInsets.only(top: 20),
                onPressed: () {},
              ),

              IconButton(
                icon: Image.asset('assets/splash/slide-one-circle.png',width: 50.0, height: 50.0),
                iconSize: 20,
                padding: const EdgeInsets.only(top: 20),
                onPressed: () {},
              ),
              // ignore: deprecated_member_use, prefer_const_constructors
             FlatButton(
                child: Text('Skip',style: TextStyle(color: Colors.black54,fontSize:24,)),
               padding: const EdgeInsets.only(top: 20),
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                  },
                ),
              // ignore: deprecated_member_use
              FlatButton(
                child: Text('Next',style: TextStyle(color: Colors.black54,fontSize:24,)),
                padding: const EdgeInsets.only(top: 20,left:80),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashSecond()),
                  );
                },
              ),
            ],
            ),
          ],
        ),
       )
    );
  }
}

class SplashSecond extends StatelessWidget {

  const SplashSecond({Key? key}) : super(key: key);

  //get decoration => null;

  @override

  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(

              image: AssetImage("assets/splash/backgroundsplash.jpg"),
              fit: BoxFit.cover,

            ),
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset('assets/splash/logo.png', height: 200,
                  width: 220  ),
              Image.asset('assets/splash/splash-2.png',height: 300,
                width: 350, ),
              Container(
                child: Text('"From general climate change news to specific scientific information and even social advocacy surrounding humanity influence on climate change, these sites cover many important aspects of the study of climate change."',style: TextStyle(color:Colors.black,fontSize:18,)),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(left: 25, right: 25,bottom: 25),
              ),
              Row(
                children: <Widget>[


                  IconButton(
                    icon: Image.asset('assets/splash/slide-one-circle.png',width: 50.0, height: 50.0),
                    iconSize: 20,
                    padding: const EdgeInsets.only(top: 20),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/splash/slide-one-dot.png'),
                    iconSize: 80,
                    padding: const EdgeInsets.only(top: 20),
                    onPressed: () {},
                  ),

                  IconButton(
                    icon: Image.asset('assets/splash/slide-one-circle.png',width: 50.0, height: 50.0),
                    iconSize: 20,
                    padding: const EdgeInsets.only(top: 20),
                    onPressed: () {},
                  ),
                  // ignore: deprecated_member_use, prefer_const_constructors
                  FlatButton(
                    child: Text('Skip',style: TextStyle(color: Colors.black54,fontSize:24,)),
                    padding: const EdgeInsets.only(top: 20),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    child: Text('Next',style: TextStyle(color: Colors.black54,fontSize:24,)),
                    padding: const EdgeInsets.only(top: 20,left:80),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SplashThird()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}


class SplashThird extends StatelessWidget {

  const SplashThird({Key? key}) : super(key: key);

  //get decoration => null;

  @override

  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(

              image: AssetImage("assets/splash/backgroundsplash.jpg"),
              fit: BoxFit.cover,

            ),
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset('assets/splash/logo.png', height: 200,
                  width: 220  ),
              Image.asset('assets/recoveraccount/farmer.png',height: 300,
                width: 350, ),
              Container(
                child: Text('"The ultimate goal of farming is not the growing of crops, but the cultivation and perfection of human beings."',style: TextStyle(color:Colors.black,fontSize:18,)),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(left: 25, right: 25,bottom: 100),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Image.asset('assets/splash/slide-one-circle.png',width: 50.0, height: 50.0),
                    iconSize: 20,
                    padding: const EdgeInsets.only(top: 20),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/splash/slide-one-circle.png',width: 50.0, height: 50.0),
                    iconSize: 20,
                    padding: const EdgeInsets.only(top: 20),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/splash/slide-one-dot.png'),
                    iconSize: 80,
                    padding: const EdgeInsets.only(top: 20),
                    onPressed: () {},
                  ),
                  // ignore: deprecated_member_use, prefer_const_constructors
                  // FlatButton(
                  //   child: Text('Skip',style: TextStyle(color: Colors.black54,fontSize:24,)),
                  //   padding: const EdgeInsets.only(top: 20),
                  //   onPressed: () {},
                  // ),

                  // ignore: deprecated_member_use
                  FlatButton(

                    child: const Text('Next' ,style: TextStyle(color: Colors.black54,fontSize:24), textAlign: TextAlign.right),
                    padding: const EdgeInsets.only(top: 20,left:150),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );

                    },
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}