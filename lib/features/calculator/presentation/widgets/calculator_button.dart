
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget{
  final String label;
  final VoidCallback onTap;
  final bool isOperator;

  const CalculatorButton({
    super.key,
    required this.label,
    required this.onTap,
    this.isOperator = false,
  });

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Padding(
        padding: const EdgeInsets.all(16),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(40),
          child: Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isOperator ? Colors.teal : Colors.grey[800],
              shape: BoxShape.circle,
            ),
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),


          ),
        ),
        
         );
    }

}