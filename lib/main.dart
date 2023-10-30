import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showDashbord=true;
  bool isDashbord=false;
  bool isSecondMenu=false;
  bool sizeShow=true;
  bool littelScreen=false;

  int numberI=-1;
  int numberJ=-1;
  int numberRow=-1;
  Color colorOne=Colors.white;
  Color colorOff=Color(0xffabb9e8);
  int flx=70;
  double size=0;
  List<IconData> icon=[Icons.shutter_speed,Icons.apple_sharp,Icons.layers];

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    TextStyle textStyleOne=const TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15);
    TextStyle textStyleOff= TextStyle(fontWeight: FontWeight.w500,color: colorOff,fontSize: 15,);
    return Scaffold(
      backgroundColor: Colors.black12,


      body: Row(
        children: [
          Visibility(
            visible: screenWidth>700||size==screenWidth&&screenWidth<700&&showDashbord==true,
            child: Expanded(
            flex: size==screenWidth&&screenWidth<700&&showDashbord==true?13:3,
              child: Container(
                height: height,
                color: Color(0xff405189),
                child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:showDashbord==true&&screenWidth>1200||
                      sizeShow==false&&size==screenWidth||
                      size!=screenWidth&&screenWidth>1200&&showDashbord==true||
                  size==screenWidth&&showDashbord==true&&screenWidth<1200&&screenWidth>700
                     ||sizeShow==true&&showDashbord==false&&screenWidth>1200&&size!=screenWidth&&size!=0
                  ||size==screenWidth&&screenWidth<700&&showDashbord==true
                      ?

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("MENU",style: TextStyle(fontSize: 10,color: colorOff,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isDashbord=!isDashbord;
                            if (isDashbord==false) {
                              isSecondMenu==false;
                              numberI=-1;
                              numberJ=-1;
                            }
                            numberRow=0;
                          });

                        },
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.shutter_speed,color:isDashbord==true&&numberRow==0?colorOne:colorOff ,),
                                SizedBox(width: 20,),
                                Text("Dashbord",style:isDashbord==true&&numberRow==0?textStyleOne:textStyleOff,),
                              ],
                            ),

                            Icon(isDashbord==true&&numberRow==0?Icons.arrow_drop_down_rounded:Icons.arrow_right,
                              color:isDashbord==true&&numberRow==0?colorOne:colorOff ,)
                          ],
                        ),
                      ),
                      Visibility(
                          visible: isDashbord&&numberRow==0,
                          child: Column(
                            children: [
                              for(int i=0;i<6;i++)
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 10,),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        isSecondMenu=!isSecondMenu;
                                        numberI=i;
                                        if (isSecondMenu==false) {
                                          numberI=-1;
                                        }

                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.linear_scale,color:isDashbord==true&&numberI==i?colorOne:colorOff ,size: 10,),
                                                SizedBox(width: 20,),
                                                Text("onemenue",style:isSecondMenu==true&&numberI==i?textStyleOne:textStyleOff,),
                                              ],
                                            ),

                                          ],
                                        ),
                                        Visibility(
                                            visible: isSecondMenu&&numberI==i,
                                            child:Column(
                                              children: [
                                                for(int j=0;j<4;j++)

                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 20,left: 20,),
                                                    child: GestureDetector(
                                                      onTap: (){
                                                        isSecondMenu=!isSecondMenu;
                                                        numberJ=j;
                                                        if (isSecondMenu==false) {
                                                          numberJ==-1;

                                                        }
                                                      },
                                                      child:  Row(mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.circle_outlined,
                                                            color:isSecondMenu==true&&numberJ==j?colorOne:colorOff,
                                                            size: 5,),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Text("isSecondMenu",style: textStyleOff,),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      SizedBox(height: 15,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isDashbord=!isDashbord;
                            if (isDashbord==false) {
                              isSecondMenu==false;
                              numberI=-1;
                              numberJ=-1;
                            }
                            numberRow=1;
                          });

                        },
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.apple_sharp,color:isDashbord==true&&numberRow==1?colorOne:colorOff ,),
                                SizedBox(width: 20,),
                                Text("Apps",style:isDashbord==true&&numberRow==1?textStyleOne:textStyleOff,),
                              ],
                            ),

                            Icon(isDashbord==true&&numberRow==1?Icons.arrow_drop_down_rounded:Icons.arrow_right,
                              color:isDashbord==true&&numberRow==1?colorOne:colorOff ,)
                          ],
                        ),
                      ),
                      Visibility(
                          visible: isDashbord&&numberRow==1,
                          child: Column(
                            children: [
                              for(int i=0;i<6;i++)
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 5,),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        isSecondMenu=!isSecondMenu;
                                        numberI=i;
                                        if (isSecondMenu==false) {
                                          numberI=-1;
                                        }

                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.linear_scale,color:isDashbord==true&&numberI==i?colorOne:colorOff ,size: 10,),
                                                SizedBox(width: 20,),
                                                Text("onemenue",style:isSecondMenu==true&&numberI==i?textStyleOne:textStyleOff,),
                                              ],
                                            ),

                                          ],
                                        ),
                                        Visibility(
                                            visible: isSecondMenu&&numberI==i,
                                            child:Column(
                                              children: [
                                                for(int j=0;j<4;j++)

                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 20,left: 5,),
                                                    child: GestureDetector(
                                                      onTap: (){
                                                        isSecondMenu=!isSecondMenu;
                                                        numberJ=j;
                                                        if (isSecondMenu==false) {
                                                          numberJ==-1;

                                                        }
                                                      },
                                                      child:  Row(mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.circle_outlined,
                                                            color:isSecondMenu==true&&numberJ==j?colorOne:colorOff,
                                                            size: 5,),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Text("isSecondMenu",style: textStyleOff,),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                            ],
                          )
                      ),
                      SizedBox(height: 15,),
                      SizedBox(height: 15,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isDashbord=!isDashbord;
                            if (isDashbord==false) {
                              isSecondMenu==false;
                              numberI=-1;
                              numberJ=-1;
                            }numberRow=2;
                          });

                        },
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.layers,color:isDashbord==true&&numberRow==2?colorOne:colorOff ,),
                                SizedBox(width: 20,),
                                Text("dashbord",style:isDashbord==true&&numberRow==2?textStyleOne:textStyleOff,),
                              ],
                            ),

                            Icon(isDashbord==true&&numberRow==2?Icons.arrow_drop_down_rounded:Icons.arrow_right,
                              color:isDashbord==true&&numberRow==2?colorOne:colorOff ,)
                          ],
                        ),
                      ),
                      Visibility(
                          visible: isDashbord&&numberRow==2,
                          child: Column(
                            children: [
                              for(int i=0;i<6;i++)
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 5,),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        isSecondMenu=!isSecondMenu;
                                        numberI=i;
                                        if (isSecondMenu==false) {
                                          numberI=-1;
                                        }
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.linear_scale,color:isDashbord==true&&numberI==i?colorOne:colorOff ,size: 10,),
                                                SizedBox(width: 20,),
                                                Text("onemenue",style:isSecondMenu==true&&numberI==i?textStyleOne:textStyleOff,),
                                              ],
                                            ),

                                          ],
                                        ),
                                        Visibility(
                                            visible: isSecondMenu&&numberI==i,
                                            child:Column(
                                              children: [
                                                for(int j=0;j<4;j++)

                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 20,left: 5,),
                                                    child: GestureDetector(
                                                      onTap: (){
                                                        isSecondMenu=!isSecondMenu;
                                                        numberJ=j;
                                                        if (isSecondMenu==false) {
                                                          numberJ==-1;

                                                        }
                                                      },
                                                      child:  Row(mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.circle_outlined,
                                                            color:isSecondMenu==true&&numberJ==j?colorOne:colorOff,
                                                            size: 5,),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Text("isSecondMenu",style: textStyleOff,),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          )
                      ),
                    ],
                  ):

                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         for(int i=0; i<icon.length;i++)
                           Padding(
                             padding: const EdgeInsets.only(top: 12),
                             child: Icon(icon[i],color: colorOff,),
                           )
                        ],
                      )

                ),
    ),
              ),
            ),
          ),
          Expanded(
              flex: showDashbord==true&&screenWidth>1200||
                  sizeShow==false&&size==screenWidth||
                  sizeShow==true&&showDashbord==true&&size==screenWidth||
                  sizeShow==true&&showDashbord==false&&screenWidth>1200&&size!=screenWidth&&size!=0
              ||size==screenWidth&&screenWidth<700&&showDashbord==true
                  ?15:flx,
              child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,


                          child: IconButton(
                            onPressed: (){
                              setState(() {

                                if (screenWidth<1200&&screenWidth>700) {
                                  setState(() {
                                    sizeShow=!sizeShow;
                                    showDashbord=!showDashbord;
                                    size=screenWidth;
                                  });
                                }else
                                  if(screenWidth>1200){
                                    setState(() {
                                      showDashbord=!showDashbord;
                                      size=screenWidth;
                                    });
                                  }else if (screenWidth<700) {
                                    showDashbord=true;
                                    size=screenWidth;

                                  }

                              });
                              print(sizeShow);
                              print(showDashbord);
                              print(size);
                              print(screenWidth);

                            }, icon: Icon(showDashbord==true&&screenWidth>1200?Icons.menu:Icons.arrow_forward)),

                    ),
                  ),
                  Expanded(
                      flex: 20,
                      child:  Container(
                        height: 50,
                      ),
                  )
                ],
              ),
            )
          ],
              )
          )
        ],
      ),
    );
  }

}
