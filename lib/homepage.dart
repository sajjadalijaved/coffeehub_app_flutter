import 'package:flutter/material.dart';
import 'package:workshop2_coffeehub/bottombar.dart';
import 'package:workshop2_coffeehub/checkout.dart';
import 'package:workshop2_coffeehub/dataclass.dart';
import 'package:workshop2_coffeehub/route.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: MyHomePage.pageName,
      onGenerateRoute: MyRoute.ongenerate,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static const pageName = '/';
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var titles = [
    'Espresso',
    'Cappuccino',
    'Macchiato',
    'Macha',
    'Latte',
    'Irish',
    'Fredo',
    'Frappe',
    'Americona',
    'Glace',
    'Mead raf',
    'Vienna'
  ];
  var image = [
    'assets/cappuccino1.jpg',
    'assets/cappuccino.jpg',
    'assets/macchiato.webp',
    'assets/macha.webp',
    'assets/latte.webp',
    'assets/irsh.webp',
    'assets/irsh1.webp',
    'assets/frappe.webp',
    'assets/Americona.webp',
    'assets/glace.webp',
    'assets/mead.webp',
    'assets/vienna.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      bottomNavigationBar: const MyBottomBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 10,
            child: Row(
              children: [
                const Spacer(
                  flex: 5,
                ),
                Expanded(
                  flex: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 70,
                ),
                Expanded(
                  flex: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 5,
                )
              ],
            ),
          ),
          Expanded(
              flex: 13,
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'It`s Great ',
                        style: TextStyle(color: Colors.black, fontSize: 40)),
                    TextSpan(
                        text: 'Day for Coffee.',
                        style:
                            TextStyle(color: Color(0xffb88067), fontSize: 42))
                  ]))),
          Expanded(
              flex: 72,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: ((context, index) => ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 9, horizontal: 9),
                    leading: Image(
                      image: AssetImage(image[index].toString()),
                    ),
                    title: Text(
                      titles[index],
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: (() {
                          Navigator.pushNamed(
                            context,
                            MyCheckout.pageName,
                            arguments: MyData(
                                title: titles[index], image: image[index]),
                          );
                        }),
                        icon: const Icon(Icons.arrow_forward_ios)))),
                itemCount: titles.length,
              ))
        ],
      ),
    );
  }
}
