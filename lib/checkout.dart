import 'package:flutter/material.dart';
import 'package:workshop2_coffeehub/dataclass.dart';

class MyCheckout extends StatefulWidget {
  MyCheckout({
    Key? key,
  }) : super(key: key);
  static const pageName = 'Checkout';
  MyData? ref;
  @override
  State<MyCheckout> createState() => _MyCheckoutState();
}

class _MyCheckoutState extends State<MyCheckout> {
  Color text1 = Colors.orange;
  Color text2 = Colors.orange;
  Color text3 = Colors.orange;
  Color text4 = Colors.orange;

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.ref = ModalRoute.of(context)!.settings.arguments as MyData;

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Spacer(
          flex: 3,
        ),
        Expanded(
          flex: 37,
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
            child: Column(
              children: [
                Row(
                  children: [
                    const Spacer(
                      flex: 5,
                    ),
                    Expanded(
                      flex: 5,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 20,
                            color: Colors.black,
                          )),
                    ),
                    const Spacer(
                      flex: 30,
                    ),
                    Expanded(
                      flex: 30,
                      child: Text(
                        '${widget.ref!.title}',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const Spacer(
                      flex: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                    child: Image(
                  filterQuality: FilterQuality.high,
                  // color: const Color(0xfff4ede7),
                  height: 100,
                  width: 100,
                  image: AssetImage('${widget.ref!.image}'),
                  fit: BoxFit.fill,
                ))
              ],
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 59,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 25,
                  child: Container(
                    color: const Color(0xfff5f5f5),
                    child: Row(
                      children: [
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                          flex: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${widget.ref!.title}',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                '\$210',
                                style: TextStyle(
                                    color: Color(0xffcf9776), fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        const Spacer(
                          flex: 30,
                        ),
                        Expanded(
                          flex: 10,
                          child: InkWell(
                            onTap: _decrementCounter,
                            child: Container(
                              height: 20,
                              width: 3,
                              decoration: const BoxDecoration(
                                  color: Color(0xffcf9776),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20))),
                              child: const Center(
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                            flex: 8,
                            child: Center(
                              child: Text(
                                '$_counter',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            )),
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                          flex: 10,
                          child: InkWell(
                            onTap: _incrementCounter,
                            child: Container(
                              height: 20,
                              width: 3,
                              decoration: const BoxDecoration(
                                  color: Color(0xffcf9776),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: const Center(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 7,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 5,
                  child: Row(
                    children: const [
                      Spacer(
                        flex: 10,
                      ),
                      Expanded(
                        flex: 10,
                        child: Text('Size',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                      Spacer(
                        flex: 80,
                      )
                    ],
                  )),
              Expanded(
                  flex: 20,
                  child: Container(
                    color: const Color(0xffffffff),
                    child: Row(
                      children: [
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                          flex: 10,
                          child: Image(
                            image: AssetImage('${widget.ref!.image}'),
                            height: 30,
                          ),
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                          flex: 10,
                          child: Image(
                            image: AssetImage('${widget.ref!.image}'),
                            height: 40,
                          ),
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                          flex: 10,
                          child: Image(
                            image: AssetImage('${widget.ref!.image}'),
                            height: 60,
                          ),
                        ),
                        const Spacer(
                          flex: 55,
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      const Spacer(
                        flex: 10,
                      ),
                      Expanded(
                        flex: 50,
                        child: RichText(
                            text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Suger ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                          TextSpan(
                              text: '(in Cubes) ',
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 15))
                        ])),
                      ),
                      const Spacer(
                        flex: 40,
                      )
                    ],
                  )),
              Expanded(
                  flex: 15,
                  child: Row(
                    children: [
                      const Spacer(
                        flex: 5,
                      ),
                      Expanded(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              text1 = Colors.blue.shade900;
                              text2 = Colors.orange;
                              text3 = Colors.orange;
                              text4 = Colors.orange;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: text1,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            height: 10,
                            width: 0,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 5,
                      ),
                      Expanded(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              text2 = Colors.blue.shade900;
                              text1 = Colors.orange;
                              text3 = Colors.orange;
                              text4 = Colors.orange;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: text2,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            height: 10,
                            width: 0,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 5,
                      ),
                      Expanded(
                        flex: 10,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              text3 = Colors.blue.shade900;
                              text1 = Colors.orange;
                              text2 = Colors.orange;
                              text4 = Colors.orange;
                            });
                          },
                          child: Row(
                            children: [
                              Expanded(
                                flex: 45,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: text3,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5))),
                                  height: 10,
                                  width: 0,
                                ),
                              ),
                              const Spacer(
                                flex: 10,
                              ),
                              Expanded(
                                flex: 45,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: text3,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5))),
                                  height: 10,
                                  width: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 5,
                      ),
                      Expanded(
                        flex: 10,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              text4 = Colors.blue.shade900;
                              text1 = Colors.orange;
                              text2 = Colors.orange;
                              text3 = Colors.orange;
                            });
                          },
                          child: Row(
                            children: [
                              Expanded(
                                flex: 45,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: text4,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5))),
                                  height: 10,
                                  width: 0,
                                ),
                              ),
                              const Spacer(
                                flex: 10,
                              ),
                              Expanded(
                                flex: 45,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: text4,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5))),
                                  height: 10,
                                  width: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 50,
                      )
                    ],
                  )),
              Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      const Spacer(
                        flex: 20,
                      ),
                      Expanded(
                        flex: 60,
                        child: InkWell(
                          onTap: (() {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Add to cart')));
                          }),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffcf9776),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: const Center(
                              child: Text(
                                'Add to cart',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 20,
                      )
                    ],
                  )),
              const Spacer(
                flex: 20,
              )
            ],
          ),
        )
      ],
    ));
  }
}
