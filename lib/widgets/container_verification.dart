import 'package:flutter/material.dart';

class ContainerVerification extends StatelessWidget {

  final IconData leadingIcon;
  final IconData trainigIcon;
  final String text;
  final Color selectedColor;

  const ContainerVerification({
    Key? key, 
    required this.leadingIcon, 
    required this.trainigIcon, 
    required this.text, 
    required this.selectedColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: selectedColor,
          width: 2,
          
        )
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: Icon(leadingIcon,color:selectedColor),
          ),
          Expanded(child: Text(text)),
          Icon(trainigIcon, color: selectedColor)
        ],
      ),
    );


  }


}