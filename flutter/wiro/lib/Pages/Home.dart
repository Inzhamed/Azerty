import 'package:flutter/material.dart';
import 'package:wiro/component/navbar.dart';
import 'package:wiro/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int level = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('hhhhh'),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
              reverse: true,
              child: Column(
                children: List.generate(
                    100,
                    (index) => MyBotton(
                        index: (100 - index),
                        onPressed: () {
                          if(100-index < level){
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      content: Column(
                                        children: [
                                          // Image.asset('assets/number1.png'),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset(
                                                'assets/leftLines.png',
                                                width: 38,
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: grey,
                                                        width: 12)),
                                                child: Text(
                                                  (100 - index).toString(),
                                                  style: TextStyle(
                                                      fontSize: 60,
                                                      color: Color(0xff1c114f),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Image.asset(
                                                'assets/rightLines.png',
                                                width: 38,
                                              ),
                                            ],
                                          ),
                                          Text((100 - index).toString())
                                        ],
                                      ),
                                    ));
                          }
                          // showDialog(
                          //     context: context,
                          //     builder: (context) => AlertDialog(
                          //           content: Column(
                          //             children: [
                          //               // Image.asset('assets/number1.png'),
                          //               Row(
                          //                 mainAxisAlignment:
                          //                     MainAxisAlignment.spaceEvenly,
                          //                 children: [
                          //                   Image.asset(
                          //                     'assets/leftLines.png',
                          //                     width: 38,
                          //                   ),
                          //                   Container(
                          //                     alignment: Alignment.center,
                          //                     width: 100,
                          //                     height: 100,
                          //                     decoration: BoxDecoration(
                          //                         shape: BoxShape.circle,
                          //                         border: Border.all(
                          //                             color: grey, width: 12)),
                          //                     child: Text(
                          //                       (100 - index).toString(),
                          //                       style: TextStyle(
                          //                           fontSize: 60,
                          //                           color: Color(0xff1c114f),
                          //                           fontWeight:
                          //                               FontWeight.bold),
                          //                     ),
                          //                   ),
                          //                   Image.asset(
                          //                     'assets/rightLines.png',
                          //                     width: 38,
                          //                   ),
                          //                 ],
                          //               ),
                          //               Text((100 - index).toString())
                          //             ],
                          //           ),
                          //         )
                          //         );
                        })
                        ),
              )
              ),
        )
        );
  }
}

List<Widget> karim = [
  const Text("ana"),
  const Text("houwa "),
  const Text("nit"),
  const Text("nta "),
  const Text("hna"),
];

class MyBotton extends StatelessWidget {
  const MyBotton({
    super.key,
    required this.index,
    required this.onPressed,
  });
  final int index;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(37.72), boxShadow: [
        BoxShadow(
          offset: const Offset(0, 12),
          color: Colors.black.withOpacity(0.2),
        ),
      ]),
      margin: EdgeInsets.only(
        top: 20,
        bottom: 20,
        right: (index ~/ 3 % 2 == 0 ? index % 3 * 50 : 0).toDouble(),
        left: (index ~/ 3 % 2 != 0 ? index % 3 * 50 : 0).toDouble(),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffDFE9F9),
            fixedSize: const Size(120, 80),
            elevation: 20,
            shadowColor: Colors.black.withOpacity(0.2)),
        // padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        // margin: EdgeInsets.only(
        //     top: 20,
        //     bottom: 20,
        //     right: index % 2 == 0 ? 20 : 0,
        //     left: index % 2 != 0 ? 20 : 0),
        // width: 120,
        // alignment: Alignment.center,
        child: Text(
          index.toString(),
          style: const TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: Color(0xff4221FE),
            letterSpacing: 1.3,
          ),
        ),
      ),
    );
  }
}
