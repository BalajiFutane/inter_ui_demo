import 'package:flutter/material.dart';
import 'package:intershala/main.dart';



class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        height: double.infinity,
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,


          children: [
            SizedBox(height: 150,),
            Container(

              padding: EdgeInsets.only(left: 20),

              child: const Text("Login",style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: const Text("Welcome",style: TextStyle(color: Colors.white,
                  fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            const SizedBox(
              height: 30,
            ),


            Expanded(child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  // Container(
                  //       padding: EdgeInsets.only(left: 50),
                  //   child: const Text("Email",style: TextStyle(fontSize: 20,
                  //   fontWeight: FontWeight.bold,),),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),


                  Center(
                    child: Container(
                      width: 350,

                      child: TextField(

                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(

                            fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          hintText: "Email Id",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(16), // Rounded corners
                            borderSide: BorderSide(color:Colors.white10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16), // Roun
                            borderSide: BorderSide(color: Colors.grey, width: 3.0),
                          ),
                        ),

                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Center(
                    child: Container(
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16), // Rounded corners
                            borderSide: const BorderSide(color:Colors.white10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16), // Roun
                            borderSide: const BorderSide(color: Colors.grey, width: 3.0),
                          ),
                        ),
                      ),
                    ),
                  ),



                  SizedBox(
                    height: 15,
                  ),



                  Container(
                    width: 140,
                    height: 40,
                    // padding: EdgeInsets.only(left: 50),
                    margin: EdgeInsets.only(left: 240),
                    child: ElevatedButton(onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(),));


                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(color: Colors.cyan)
                        ),
                      ),
                      child: const Text("Continue",style: TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 258),
                    child: const Text("Forgot password" ,style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),),
                  ),
                  const SizedBox(

                    height: 10,
                  ),

                  const Row(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(padding: EdgeInsets.only(left: 60)),
                      Text("--------------------------------" ,style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey
                      ),),

                      Text("Or sign up with" ,style: TextStyle(
                        fontSize: 15,
                      ),),
                      Text("--------------------------------" ,style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey
                      ),),
                    ],

                  ),


                  // Image.asset("lib/logo/google.png"),
                  SizedBox(
                    height: 10,
                  ),


                  Row(

                    children: [
                      Padding(padding: EdgeInsets.only(left: 130)),


                      InkWell(
                        child: Image.asset(

                          'lib/image/google.png', // Path to your asset image
                          height: 45.0, // Image height
                          width: 42.0, // Image width
                        ),
                      ),

                      Padding(padding: EdgeInsets.only(left: 40)),

                      InkWell(
                        child: Image.asset(

                          'lib/image/facebook.png', // Path to your asset image
                          height: 45.0, // Image height
                          width: 45.0, // Image width
                        ),
                      ),







                    ],
                  ),

                  Row(

                    children: [

                      const SizedBox(
                        height: 50,
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 100),
                      ),

                      const Text("Don't have account?" ,style: TextStyle(
                        fontSize: 15,
                      ),),

                      const Text(" Sign up" ,style: TextStyle(
                          fontSize: 15,
                          color: Colors.cyan,
                          fontWeight:FontWeight.bold
                      ),),



                    ],
                  ),


                  Row(


                    children: [

                      const SizedBox(
                        height: 40,
                      ),

                      Padding(padding: EdgeInsets.only(left: 50)),
                      Container(
                        child: const Text("By signing up you agree to our ",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15
                        ),),
                      ),

                      Container(
                        child: const Text("term of use",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),),
                      )

                    ],

                  ),


                  Row(
                    children: [

                      Padding(padding: EdgeInsets.only(left: 130)),

                      Container(
                        child: const Text("and",style: TextStyle(
                            color: Colors.grey,
                            //fontWeight: FontWeight.,
                            fontSize: 16
                        ),),
                      ),
                      Container(
                        child: const Text(" privacy policy",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),),
                      ),
                    ],
                  )
                ],
              ),
            ),


            ),



          ],

        ),

      ),




    );
  }
}
