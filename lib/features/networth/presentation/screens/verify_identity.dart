import 'package:flutter/material.dart';

class VerifyIdentity extends StatefulWidget {
  const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Identity Screen completed'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity, height: 100,
              child: Row(
                children: [
                  Icon(Icons.verified,color: Colors.white,),
                  Column(
                    children: [
                      Text("PAN Verified",style: TextStyle(color: Colors.white),)
                    ],
                  )
                  
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity, height: 100,
            )
          ],       
        ),
      )
    );
  }
}

