import 'package:flutter/material.dart';
import 'package:freelance_guido/utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 1,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF76AADC), Color(0xFF7E7FD8)], //Background
                    stops: [0, 1],
                    begin: AlignmentDirectional(1, 0.34),
                    end: AlignmentDirectional(-1, -0.34),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 1,
                decoration: BoxDecoration(),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Botões em cima
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xFF4E4A85),
                            size: 40,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.grid_view_rounded,
                            color: Color(0xFF4E4A85),
                            size: 40,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(appRoutes.GAMES_CATEGORIES);
                          },
                        ),
                      ),
                    ],
                  ),
                  //Parte Central
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'GAME STORE',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://cdn3d.iconscout.com/3d/premium/thumb/game-controller-4035922-3342601.png',
                              width: 300,
                              height: 350,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFFBDD2F1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Lorem Ipsum',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                Switch.adaptive(
                                  value: false,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        value = true;
                                      },
                                    );
                                  },
                                  activeColor: Colors.amber,
                                ),
                              ],
                            ),
                          ),
                          //Botão
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(200, 50),
                                backgroundColor: Color(0xFFF3932BC),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(160)
                                )
                              ),
                              child: Text('Lorem'),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //Menu
              Align(
                alignment: const AlignmentDirectional(0.00, 1.00),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 90,
                      decoration: const BoxDecoration(
                        color: Color(0xFFBDD2F1),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.search,
                              color: Color(0xFF4E4A85),
                              size: 40,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.home,
                              color: Color.fromARGB(255, 169, 179, 255),
                              size: 50,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.videogame_asset,
                              color: Color(0xFF4E4A85),
                              size: 40,
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed(appRoutes.GAMES);
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.settings,
                              color: Color(0xFF4E4A85),
                              size: 40,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
