import 'package:calculator_app/components/Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align( alignment: Alignment.bottomRight,
                          child: Text(userInput.toString(),style: const TextStyle(fontSize: 30, color: Colors.white),)),

                      const SizedBox(height: 15),

                      Text(answer.toString(),style: const TextStyle(fontSize: 30, color: Colors.white),)
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Button(title: 'AC',onPress: (){
                          userInput ='';
                          answer = '';
                          setState(() {

                          });
                        },),
                        Button(title: '+/-',onPress: (){
                          userInput += '+/-';
                          setState(() {

                          });
                        }),
                        Button(title: '%',onPress: (){
                          userInput +='%';
                          setState(() {

                          });
                        }),
                        Button(title: '/',onPress: (){
                          userInput +='/';
                          setState(() {

                          });
                        },color: const Color(0xffffa80a) ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(title: '7',onPress: (){
                          userInput +='7';
                          setState(() {

                          });
                        },),
                        Button(title: '8',onPress: (){
                          userInput +='8';
                          setState(() {

                          });
                        }),
                        Button(title: '9',onPress: (){
                          userInput +='9';
                          setState(() {

                          });
                        }),
                        Button(title: 'x',onPress: (){
                          userInput +='x';
                          setState(() {

                          });
                        },color: const Color(0xffffa80a) ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(title: '4',onPress: (){
                          userInput +='4';
                          setState(() {

                          });
                        },),
                        Button(title: '5',onPress: (){
                          userInput +='5';
                          setState(() {

                          });
                        }),
                        Button(title: '6',onPress: (){
                          userInput +='6';
                          setState(() {

                          });
                        }),
                        Button(title: '-',onPress: (){
                          userInput +='-';
                          setState(() {

                          });
                        },color: const Color(0xffffa80a) ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(title: '1',onPress: (){
                          userInput +='1';
                          setState(() {

                          });
                        },),
                        Button(title: '2',onPress: (){
                          userInput +='2';
                          setState(() {

                          });
                        }),
                        Button(title: '3',onPress: (){
                          userInput +='3';
                          setState(() {

                          });
                        }),
                        Button(title: '+',onPress: (){
                          userInput +='+';
                          setState(() {

                          });
                        },color: const Color(0xffffa80a) ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(title: '.',onPress: (){
                          userInput +='.';
                          setState(() {

                          });
                        },),
                        Button(title: '0',onPress: (){
                          userInput +='0';
                          setState(() {

                          });
                        }),
                        Button(title: 'DEL',onPress: (){
                          userInput = userInput.substring(0, userInput.length-1);
                          setState(() {

                          });
                        }),
                        Button(title: '=',onPress: (){
                          equalPress();
                          setState(() {
                            
                          });
                        },color: const Color(0xffffa80a) ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15,),

            ],
          ),
        ),
      ),

    );
  }

  void equalPress (){
    String finalUserInput = userInput;
    finalUserInput= userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);

    answer = eval.toString();
  }
}






