
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:international_phone_input/international_phone_input.dart';
//import 'package:otp_screen/otp_screen.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';




// ThemeData buildTheme() {
//   final ThemeData base = ThemeData();
//   return base.copyWith(
//     hintColor: Colors.blue,
//     inputDecorationTheme:  InputDecorationTheme(
//       labelStyle: TextStyle(
//           color: Colors.blueAccent,
//           fontSize: 24.0
//       ),
//     ),
//   );
// }

class LoginScreen extends StatelessWidget {


  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //RichText text;
    return Scaffold(
        body: Container(

            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/login/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              // Vertically center the widget inside the column
                mainAxisAlignment: MainAxisAlignment.center,
             // crossAxisAlignment: WrapCrossAlignment.center,

              // ignore: prefer_const_constructors
                children:  [
                  MyLoginWidget(),
                ]
            )
        )

    );

  }
}



class MyLoginWidget extends StatelessWidget {
  const MyLoginWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
       //RichText text;
    //TextStyle style = DefaultTextStyle.of(context).style;
    return Stack(

        clipBehavior: Clip.none,
        children:  <Widget>
        [
          Container(
            height: 300,
            width: 400,
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(10.0),
            // ignore: avoid_unnecessary_containers
            child: Wrap(

              children: <Widget>[
                Container(
                    width: 90,
                    height: 45,
                    padding: const EdgeInsets.only(top: 10,left:10,),
                    child: Center(

                      child: DefaultTextStyle(
                        child: Container(child: Text("Login ")),
                        style: TextStyle( fontWeight: FontWeight.bold,fontSize: 30.0, color: Colors.black,),
                      ),

                    )
                ),
                Container(
                    width: 150,
                    height: 45,
                    padding: const EdgeInsets.only(top: 10,right:15),
                    child:Center(

                      child: DefaultTextStyle(
                        child: Container(child: Text("with your")),
                        style: TextStyle( fontSize: 30.0, color: Colors.black,),
                      ),

                    )
                ),
                Container(
                    width: 100,
                    height: 45,
                ),
                Container(
                    width: 200,
                    height: 45,
                    child:Center(
                      child: DefaultTextStyle(
                        child: Container(child: Text("phone number")),
                        style: TextStyle( fontSize: 30.0, color: Colors.black,),
                      ),
                    )
                ),
                Container(
                    width: 100,
                    height: 45,
                ),
                Container(
                    width: 400,
                    height: 80,
                    padding: const EdgeInsets.all(20.0),

                  child: InternationalPhoneInput(
                      decoration:  InputDecoration.collapsed(hintText: '(123) 123-1234'),
                       border: const OutlineInputBorder(),
                    // border:OutlineInputBorder(
                    //   borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    //   borderRadius: BorderRadius.circular(25.0)),
                    //border: Border.all(color: Colors.black, width: 3),
                      showCountryCodes: false,
                      showCountryFlags: true,
                   ),
                 ),
                Container(
                 // color: Colors.black,
                  width: 125,
                  height: 30,
                ),
                Container(
                  width: 150,
                  height: 30,
                  child:Center(
                    child: DefaultTextStyle(
                      child: Container(child: Text("forget your password?")),
                      style: TextStyle( fontSize: 15.0,color: Colors.black54,),
                    ),
                  ),
                ),
                Container(
                  width: 75,
                  height: 30,
                  child:Center(
                    child: DefaultTextStyle(
                      child: Container(child: Text("click here")),
                      style: TextStyle( fontSize: 15.0,color: Colors.black,),
                    ),
                  ),
                ),

                Container(
                  //color: Colors.yellow,
                  width: 400,
                  height: 150,
                  child: Center(
                    //padding: EdgeInsets.symmetric(horizontal: 1.0),
                    child: IconButton(
                      icon: Image.asset('assets/login/next-icon.png'),
                      padding: const EdgeInsets.only(top: 30),
                      iconSize: 150,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerifyOTP()),
                        );
                      }
                    ),

                ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Colors.black)
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),

        ]
    );
  }
}

class  VerifyOTP extends StatelessWidget {
  const VerifyOTP({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OTPTextField(
          length: 4,
          width: MediaQuery.of(context).size.width,
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldWidth: 55,
          fieldStyle: FieldStyle.underline,
          outlineBorderRadius: 15,
          style: const TextStyle(fontSize: 17),
          onChanged: (pin) {
            print("Changed: " + pin);
          },
          onCompleted: (pin) {
            print("Completed: " + pin);
          },
        ),
      ),
    );

  }
}
