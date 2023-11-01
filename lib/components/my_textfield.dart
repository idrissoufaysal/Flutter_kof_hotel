import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controler;
  final String hintText;
  final bool obscureText;

  const MyTextfield({super.key, this.controler, required this.hintText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: controler,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.grey.shade400)
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true
                      ),
                    ),
                  );
  }
}