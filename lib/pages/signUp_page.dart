import 'package:flutter/material.dart';

import 'login_page.dart';
//import 'package:kof_hotels/components/my_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

 
class _SignUpState extends State<SignUp> {

final emailController = TextEditingController();
  final passwordController = TextEditingController();
 int currentIndex=0;
  SetCurrentPage(int index){
    setState(() {
      currentIndex=index;
    });
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
          
                SizedBox(height: 10),
                Icon(
              Icons.account_circle_outlined,
                  size: 90,
                  color: Color.fromARGB(255, 32, 196, 10),
                ),
                SizedBox(height: 40),
          
                Text(
                  'Hello welcome !',
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
          
                SizedBox(height: 10,),
          
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirmez votre mot de pass',
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
                      backgroundColor: Color.fromARGB(255, 32, 196, 10),
                      padding: EdgeInsets.symmetric(horizontal:120),
                        
          

                    ),
                     child:Text('S\'inscrire', style:TextStyle(
                      fontSize: 20,
                     ))
                      ),
                  ),
                ),
          SizedBox(height: 10,),
          
          //not menber ? register
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              Icon(Icons.lock,
              color: Colors.white,),
              Text('  vous avez un compte ?  ',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
              TextButton(
                child: Text('Connectez vous',
              style: TextStyle(
                color: Colors.blue[300],
                fontWeight: FontWeight.bold
              ),
              ),
              onPressed: () {
          Navigator.push(context,
          PageRouteBuilder(
            pageBuilder:(_, __, ___)=> LoginPage()
          )
          );
             }
              )
            ],
          )
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
  }

