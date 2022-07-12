import 'package:flutter/material.dart';


InputDecoration inputdecoration()=> InputDecoration(

  isDense: true,
  // contentPadding: const EdgeInsets.symmetric( horizontal: 20,vertical:15),

  counterText: '',

  enabledBorder: OutlineInputBorder(

    borderSide: const BorderSide(
      color: Color(0xff26262C),
      width: 2,
    ),

    borderRadius: BorderRadius.circular(10),

  ),

  focusedBorder: OutlineInputBorder(

    borderSide: const BorderSide(

      color: Color(0xff6C63FF),
      width: 2,

    ),
    
    borderRadius: BorderRadius.circular(10),
  ),

  errorBorder: OutlineInputBorder(

    borderSide: const BorderSide(
      color: Colors.red,
      width: 2,
    ),

    borderRadius: BorderRadius.circular(10),

  ),


);