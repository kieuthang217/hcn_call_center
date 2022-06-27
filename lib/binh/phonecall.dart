import 'package:flutter/material.dart';
import 'package:hcn_call_center/binh/button_keybroad.dart';

class Calculator1 extends StatefulWidget {
  @override
  _CalculatorState1 createState() => _CalculatorState1();
}

class _CalculatorState1 extends State<Calculator1> {
  dynamic displaytxt = 20;
  //Button Widget
  Widget calcbutton(String btntxt,Color btncolor,Color txtcolor){
    return  Container(
      child: RaisedButton(
        onPressed: (){
        },
        child: Text('$btntxt',
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
        shape: CircleBorder(),
        color: btncolor,
        padding: EdgeInsets.all(20),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    //Calculator
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Calculator'),
      //   backgroundColor: Colors.black,
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // Calculator display
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('434636',
                      textAlign: TextAlign.center ,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 100,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                    size: Size(66, 65),
                    child: ClipOval(
                      child: Material(
                        color: Colors.grey,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.mic_off , color: Colors.white,size: 34,),
                            ],
                          ),
                        ),
                      ),
                    )
                ),
                SizedBox.fromSize(
                  size: Size(66, 65),
                  child: ClipOval(
                    child: Material(
                      color: Colors.grey,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.apps),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Calculator2() ),
                                );},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(66, 65),
                  child: ClipOval(
                    child: Material(
                      color: Colors.grey,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.volume_up , color: Colors.white,size: 40,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: Size(66, 65),
                  child: ClipOval(
                    child: Material(
                      color: Colors.red,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.call_end ,size: 35, color: Colors.white,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100,),
            SizedBox(height: 400,),
          ],
        ),
      ),
    );
  }

}


