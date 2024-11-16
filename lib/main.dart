import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(

            //overall full screen as a column

            child: Column(
          children: [
            // for spacing

            const SizedBox(
              height: 50,
            ),

            //row inside the column---

            const Row(
              //axis wise alignment ---

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('images/logo.png')),
                SizedBox(
                  width: 10,
                ),

                //column bnaya (content upper nichhe assign kerne k liye) because row aage picce asign kerta h ---

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Maintenance',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontFamily: 'Rubik Medium', fontSize: 24),
                    ),
                    Text(
                      'Box',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Rubik Medium',
                          fontSize: 24,
                          color: Color(0xffF9703B)),
                    ),
                  ],
                ), // yha per 2nd colomn band
              ], //row k children band
            ), //now row closed
            const SizedBox(
              height: 50,
            ),
            //this is children of overall main column --

            const Center(
                child: Text(
              'Log in',
              style: TextStyle(
                  fontFamily: 'Rubik Medium',
                  fontSize: 24,
                  color: Color(0xff203142)),
            )),

            const SizedBox(
              height: 15,
            ),

            //children of main column --

            const Center(
                child: Text(
              // \n is for adjust text in next line

              'This is a login page made by kapil sharma.\n This app is under progress....',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Rubik Regular',
                  fontSize: 16,
                  color: Color(0xff4C5980)),
            )),

            const SizedBox(
              height: 20,
            ),

            // padding concept is here ---

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),

              //textfield for email
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  fillColor: const Color(0xffF8F9FA),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.alternate_email,
                    color: Color(0xff323F48),
                  ),

                  // border
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
              ),

              // textfield for password

              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  fillColor: Color(0xffF8F9FA),
                  filled: true,

                  //lock icon --
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xff323F48),
                  ),

                  // for icon of eye in password

                  suffixIcon: const Icon(Icons.visibility_off_outlined),

                  // for border
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 5,
            ),

            //for forget password

            const Text(
              'Forgot Password',
              style: TextStyle(
                fontFamily: 'Rubik Medium',
                fontSize: 11,
              ),
              textAlign: TextAlign.end,
            ),

            const SizedBox(
              height: 110,
            ),

            // for login button --

            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xffF9703B),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'Rubik Regular',
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //for text in  row format (agge picchhe )---

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  'Dont have any account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Rubik Regular',
                      fontSize: 16,
                      color: Color(0xff4C5980)),
                )),

                //for text in row
                Text(
                  'Signup',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Rubik Medium',
                      fontSize: 16,
                      color: Color(0xffF9703B)),
                ),
              ],
            ), // row close
          ], //childer close of overall column
        )),
      ),
    );
  }
}
