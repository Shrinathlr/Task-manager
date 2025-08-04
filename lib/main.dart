import 'package:flutter/material.dart';
import 'package:task_manager_app/features/networth/presentation/screens/assets_screen.dart';
import 'package:task_manager_app/features/networth/presentation/screens/verify_identity.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:VerifyIdentity(),
    );
  }
}