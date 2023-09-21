/*import 'package:swappymess/ui/common/app_colors.dart';
import 'package:swappymess/ui/common/app_constants.dart';
import 'package:swappymess/ui/common/ui_helpers.dart';*/
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';


class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Positioned(
                height: (MediaQuery.of(context).size.height * .75 - (kToolbarHeight + kBottomNavigationBarHeight))*0.8,
                top: (MediaQuery.of(context).size.height * .75 - (kToolbarHeight + kBottomNavigationBarHeight))*0.35 ,
                left: 30,
                child: Container(
                  //                  height: MediaQuery.of(context).size.height * .75 - (kToolbarHeight + kBottomNavigationBarHeight),
                  padding: const EdgeInsets.all(16),
                  width: 420,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromARGB(255, 156, 153, 153),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      const Text("Mess Swap Portal",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                      const SizedBox(height: 10,),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Name/ID',
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(height:  30.0),
                      ElevatedButton(
                                      onPressed: () {
                                        // Handle login button press
                                      },
                                      child: const Text('Login'),
                        ),
                      const SizedBox(height: 10.0),
                      const Text("or",style: TextStyle(color:Colors.white,fontSize: 15)),
                      const SizedBox(height: 10,),
                      ElevatedButton(
                        onPressed: () {
                          // Handle Google sign-in button press
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                        ),
                        child: const Text('Sign in with Google'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Positioned(
              top:40,
              right:12,
              child: Container(
                padding: const EdgeInsets.all(16) ,
                width:420,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromARGB(255, 156, 153, 153),//box color
                  boxShadow:const [
                     BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: const Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Name/ID',
                        fillColor: Colors.white
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 25.0),
                  ],
                ),
                SizedBox(height: 20.0),
              ),
              
            ],)
          ),
        ), 
      );
  }
}*/
