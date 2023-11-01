
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kof_hotels/pages/signUp_page.dart';
//import 'package:kof_hotels/components/my_textfield.dart';
//import'package:firebase_core/firebase_core.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

//Text eiting controlers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  //AuthCredential get credential => null;

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

@override
void dispose(){
  _emailController.dispose();
  _passwordController.dispose();
  //super.dispose();
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //log

                SizedBox(height: 50),
                Icon(
                  Icons.lock,
                  size: 90,
                  color: Colors.amber,
                ),
                SizedBox(height: 40),

                Text(
                  'Hello welcome Back !',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),

                //username textFied
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Entrez votre Email',
                          // obscureText: false,
                        ),
                        //  controler: emailController,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Entrez votre mot de pass',
                          // obscureText: false,
                        ),
                        obscureText: true,
                        //  controler: emailController,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),

                Card(
                  child: Container(
                    height: 40,
                    
                    child: ElevatedButton(onPressed: (){
                  
                    },
                    style:ElevatedButton.styleFrom(
                      //backgroundColor: Color.fromARGB(255, 32, 196, 10),
                                            backgroundColor: Colors.amber,

                      padding: EdgeInsets.symmetric(horizontal:120),
                        
          

                    ),
                     child:Text('Se connecter', style:TextStyle(
                      fontSize: 20,
                     ))
                      ),
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap:signIn,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Se connecter',
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          )
                          ),
                        ),
                    ),
                  ),
                  ),

                SizedBox(
                  height: 10,
                ),

                // ElevatedButton(
                //   onPressed: (){
                //   //signInWithGoogle();
                // // }, child:Row(
                // //   children:const [
                // //     Icon(Icons.email),
                // //     Text('compte google')
                // //   ],
                // //   )
                //   ),
                  SizedBox(height: 10,),

                //not menber ? register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    ),
                    Text('  pas de compte ?  ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    TextButton(
                        child: Text(
                          'Inscrivez vous',
                          style: TextStyle(
                              color: Colors.blue[300],
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => SignUp()));
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  // signInWithGoogle() async{
  //   GoogleSignInAccount? googleUser= await GoogleSignIn().signIn();
  //   GoogleSignInAuthentication? googleAuth= await googleUser?.authentication;

  //   GoogleAuthProvider.credential(
  //     accessToken:googleAuth?.accessToken ,
  //     idToken: googleAuth?.idToken

  //   );

  //   UserCredential userCredential= await FirebaseAuth.instance.signInWithCredential(Credential as AuthCredential);

  //     print(userCredential.user?.displayName);
  // }
}
