import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.grey[200],
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios))
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Log in',
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),),),
          const SizedBox(height: 15),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                const TextSpan(
                  text: 'By logging in, you agree to our ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  )
                ),
                const TextSpan(
                  text: 'Terms of Service',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
    ]
                ),
    )
          ),
          const SizedBox(height: 30),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
          Text('Email',
          style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold)),),
          const SizedBox(height: 20),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Your email',
              filled: true,
              fillColor: Colors.white,
              hintText: 'Enter your email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:   BorderSide.none
              ),
            ),
            ),


    ),
          const SizedBox(height: 20),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
          Text('We will send you an e-mail with a login link.',
              style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold)),),
          const SizedBox(height: 20),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child:SizedBox(width: double.infinity,height: 50,
             child: ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
          ),
    ),
              child: Text('Connect',style: TextStyle(color: Colors.white,fontSize: 15),))),
          ),
          const SizedBox(height: 50),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
          Text('----------------------------- Or -------------------------',
              style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold)),),
          const SizedBox(height: 30),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child:SizedBox(width: double.infinity,height: 60,
           child:  OutlinedButton.icon(onPressed: (){},
    style: OutlinedButton.styleFrom(
    side: BorderSide(color: Colors.grey),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
    ),
    ),
    icon: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRIUDgR7yEZoNQNm9FlE9wup3XndJM_P1Rug&s',width: 20,height: 20,),
    label: Text('Sign in with Google',style: TextStyle(color: Colors.grey[600],fontSize: 15),),
    )
          )
          ),
          const SizedBox(height: 40),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(width: double.infinity,height: 60,
                child: OutlinedButton.icon(onPressed:(){},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),

                    ),
                  icon: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuCgurhGwJgHviYZxG4gLF6dtJy4dXTe-7TQ&s',width: 20,height: 20)
                  ,
                  label: Text('Sign in with Facebook',style: TextStyle(color: Colors.grey[600],fontSize: 15),),)),
          ),
          const SizedBox(height: 40),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
    text: TextSpan(
    style: TextStyle(fontSize: 15, color: Colors.grey),
    children: [
    TextSpan(text: 'For more information, please visit our '),
    TextSpan(
    text: 'Privacy Policy',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
    ),
    ],
    ),
    )
          )

    ]

            ),
          );

  }
}
