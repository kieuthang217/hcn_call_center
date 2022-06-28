import 'package:flutter/material.dart';
class Calculator2 extends StatefulWidget {
  @override
  _CalculatorState2 createState() => _CalculatorState2();
}

class _CalculatorState2 extends State<Calculator2> {
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
                            Text('1',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('.',
                              style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),),
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
                            Text('2',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('A B C',
                              style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
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
                            Text('3',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('D E F',
                              style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
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
                            Text('4',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('G H I',
                              style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
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
                            Text('5',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('J K L',
                              style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
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
                            Text('6',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('M N O',
                              style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
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
                            Text('7',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('P Q R S',
                              style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
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
                            Text('8',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('T U V',
                              style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
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
                            Text('9',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('W X Y Z',
                              style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
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
                            Text('*',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
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
                            Text('0',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('+',
                              style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
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
                            Text('#',
                              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: Size(66, 65),
                  child: ClipOval(
                    child: Material(
                      color: Colors.white,
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.call_end),
                              color: Colors.white,
                              onPressed: () {},
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
                      color: Colors.red,
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.call_end),
                              color: Colors.white,
                              onPressed: () {},
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
                      color: Colors.white,
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(color: Colors.white,fontSize: 20),),
                              onPressed: (){},
                              child: Text('Ẩn'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100,),
            SizedBox(height: 200,),
          ],
        ),
      ),

    );
  }
}


