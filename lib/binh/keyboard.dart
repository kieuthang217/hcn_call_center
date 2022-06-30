import 'package:flutter/material.dart';
import 'package:hcn_call_center/binh/phonecall.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  dynamic displaytxt = 11;

  //Button Widget
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          calculation(btntxt);
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
  Widget calcbutto( String btntxt,String btntx,Color btncolor, Color txtcolor) {
    return Stack(
        children: <Widget>[
          SizedBox.fromSize(
            size: Size(66, 65),
            child: ClipOval(
              child: Material(
                color: Colors.grey,
                child: InkWell(
                  onTap: () {
                    calculation(btntxt);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('$btntxt',
                        style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                      Text('$btntx',
                        style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ),
          ),
    ]
    );
  }
  Widget calcbutt( String btntxt,String btntx,Color btncolor, Color txtcolor) {
    return Stack(
        children: <Widget>[
          SizedBox.fromSize(
            size: Size(66, 65),
            child: ClipOval(
              child: Material(
                color: Colors.grey,
                child: InkWell(
                  onTap: () {
                    calculation(btntxt);
                  },
                  onLongPress: () {
                    calculation(btntx);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('$btntxt',
                        style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                      Text('$btntx',
                        style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]
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
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('$text',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutto('1','', Colors.grey, Colors.white),
                calcbutto('2','A B C',Colors.grey, Colors.white),
                calcbutto('3','D E F', Colors.grey, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutto('4','G H I', Colors.grey, Colors.white),
                calcbutto('5','J K L', Colors.grey, Colors.white),
                calcbutto('6','M N O', Colors.grey, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutto('7','P Q R S', Colors.grey, Colors.white),
                calcbutto('8','T U V' , Colors.grey, Colors.white),
                calcbutto('9','W X Y Z', Colors.grey, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('*', Colors.grey, Colors.white),
                calcbutt('0','+',  Colors.grey, Colors.white,),
                calcbutton('#', Colors.grey, Colors.white),
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
                        onTap: () {
                          // Navigator.push(context,
                          //   MaterialPageRoute(builder: (context) => Calculator1() ),
                          // );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.call, size: 35, color: Colors.white,),
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
                      color: Colors.green,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => Calculator1()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.call, size: 35, color: Colors.white,),
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
                            IconButton(
                              icon: const Icon(Icons.backspace),
                              color: Colors.grey,
                              iconSize: 30,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 200,),
          ],
        ),
      ),
    );
  }

  //Calculator logic
  dynamic text = '0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';

  void calculation(btnText) {
    if (btnText == 'AC') {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '/') {
        finalResult = div();
      }
    } else
    if (btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' ||
        btnText == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    }
    else if (btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = result.toString() + '.';
      }
      finalResult = result;
    }

    else if (btnText == '+/-') {
      result.toString().startsWith('-') ?
      result = result.toString().substring(1) : result =
          '-' + result.toString();
      finalResult = result;
    }

    else {
      result = result + btnText;
      finalResult = result;
    }


    setState(() {
      text = finalResult;
    });
  }


  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }


  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }

}


