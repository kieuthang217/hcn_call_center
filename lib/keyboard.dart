// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class KeyBoard extends StatefulWidget {
  const KeyBoard({Key? key}) : super(key: key);

  @override
  State<KeyBoard> createState() => _KeyBoardState();
}

class _KeyBoardState extends State<KeyBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.fromLTRB(80, 80, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
              children: <Widget>[
              Row(
                children: <Widget>[
                  FuntionalButton(title: '000',text: '1',onPressed: () { }),
                  FuntionalButton(title: '000',text: '2',onPressed: () { },),
                  FuntionalButton(title: '000',text: '3',onPressed: () { },),
                ],
              ),
                Row(
                  children: <Widget>[
                    FuntionalButton(title: '000',text: '4',onPressed: () { }),
                    FuntionalButton(title: '000',text: '5',onPressed: () { },),
                    FuntionalButton(title: '000',text: '6',onPressed: () { },),

                  ],
                ),
                Row(
                  children: <Widget>[
                    FuntionalButton(title: '000',text: '7',onPressed: () { }),
                    FuntionalButton(title: '000',text: '8',onPressed: () { },),
                    FuntionalButton(title: '000',text: '9',onPressed: () { },),

                  ],
                ),
                Row(
                  children: <Widget>[
                    FuntionalButton(title: '000',text: '*',onPressed: () { }),
                    FuntionalButton(title: '000',text: '0',onPressed: () { },),
                    FuntionalButton(title: '000',text: '#',onPressed: () { },),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(

                          padding: EdgeInsets.fromLTRB(105, 0, 20, 20),
                          child: FloatingActionButton(

                            onPressed: (){},
                            shape: CircleBorder(side: BorderSide(color: Colors.green)
                            ),
                            mini: false,
                            child: Icon(Icons.call, color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ],


        ),

      ),

      ),
    );
  }
}

class FuntionalButton extends StatefulWidget {
  final title;
  final text;
  final Function() onPressed;

  const FuntionalButton({Key? key, this.title,  required this.onPressed, this.text}) : super(key: key);

  @override
  State<FuntionalButton> createState() => _FuntionalButtonState();
}

class _FuntionalButtonState extends State<FuntionalButton> {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        RawMaterialButton(
          onPressed: widget.onPressed,
          splashColor: Colors.white12,
          fillColor: Colors.white38,
          shape: CircleBorder(),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              widget.text,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          child: Text(widget.title,style: TextStyle(fontSize: 10.0, color: Colors.white54),),
        )
      ],
    );
  }
}
