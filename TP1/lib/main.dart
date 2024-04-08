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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Où partons-nous ?'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                color: Colors.red,
                icon: const Icon(Icons.account_box),
                onPressed: () {
                  // ...
                },
              )
            ],
            bottom: const TabBar(
              labelColor: Colors.red,
              indicatorColor: Colors.red,
              tabs: [
                Tab(icon: Icon(Icons.house_siding), text: 'Campagne'),
                Tab(icon: Icon(Icons.houseboat_outlined), text: 'Sur l\'eau'),
                Tab(icon: Icon(Icons.panorama), text: 'Avec vue'),
              ],
            ),
            title: const Text('Où partons-nous ?'),
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://media.istockphoto.com/id/470933285/fr/photo/matin-brumeux-route-de-campagne-%C3%A0-travers-le-paysage-pittoresque-de-la-campagne.jpg?s=612x612&w=0&k=20&c=wnx__9RehOOHFZ1QXrQgs8x6CKivoNbtNgho2yKpCu8=',
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Paris, France',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Text(
                                '4.83',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]
                          )
                        ],
                      ),
                      Text(
                        '3-8 septembre',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        '140€ par nuit',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: const Text('Contenu de l\'onglet 2'),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text('Contenu de l\'onglet 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
