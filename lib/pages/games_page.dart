import 'package:flutter/material.dart';
import 'package:freelance_guido/utils/routes.dart';

class gamesPage extends StatelessWidget {
  const gamesPage({super.key});

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
                            Navigator.of(context)
                                .pushNamed(appRoutes.GAMES_CATEGORIES);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: const Color(0xFFBDD2F1),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://img.freepik.com/free-psd/casino-dice-icon-render_23-2149326552.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lorem Ipsum',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Lorem ipsum dolor sit amet',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                      ),
                                    ),
                                    ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(100, 20),
                                    backgroundColor: Color(0xFFF3932BC),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(160)
                                    )
                                  ),
                                  child: Text('Lorem'),
                                  onPressed: () {},
                                ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: const Color(0xFFBDD2F1),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://playordown.com/wp-content/uploads/2021/04/PACMAN-512x512-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lorem Ipsum',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Lorem ipsum dolor sit amet',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                      ),
                                    ),
                                    ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(100, 20),
                                    backgroundColor: Color(0xFFF3932BC),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(160)
                                    )
                                  ),
                                  child: Text('Lorem'),
                                  onPressed: () {},
                                ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: const Color(0xFFBDD2F1),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://img.freepik.com/free-vector/arcade-machine-game-cartoon-vector-icon-illustration-holiday-technology-icon-isolated-premium-flat_138676-7546.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lorem Ipsum',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Lorem ipsum dolor sit amet',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                      ),
                                    ),
                                    ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(100, 20),
                                    backgroundColor: Color(0xFFF3932BC),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(160)
                                    )
                                  ),
                                  child: Text('Lorem'),
                                  onPressed: () {},
                                ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
                              color: Color(0xFF4E4A85),
                              size: 40,
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed(appRoutes.MAIN);
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.videogame_asset,
                              color: Color.fromARGB(255, 169, 179, 255),
                              size: 50,
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
