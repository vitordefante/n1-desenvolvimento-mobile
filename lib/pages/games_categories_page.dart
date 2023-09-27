import 'package:flutter/material.dart';
import 'package:freelance_guido/utils/routes.dart';
import 'package:freelance_guido/widgets/item_categorie_widget.dart';

class gamesCategoriesPage extends StatefulWidget {
  const gamesCategoriesPage({super.key});

  @override
  State<gamesCategoriesPage> createState() => _gamesCategoriesPageState();
}

class _gamesCategoriesPageState extends State<gamesCategoriesPage> {
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
                    colors: [Color(0xFF76AADC), Color(0xFF7E7FD8)],
                    stops: [0, 1],
                    begin: AlignmentDirectional(1, 0.34),
                    end: AlignmentDirectional(-1, -0.34),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 1,
                decoration: const BoxDecoration(),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xFF4E4A85),
                            size: 40,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(appRoutes.MAIN);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 20, 0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.grid_view_rounded,
                            color: Color.fromARGB(255, 169, 179, 255),
                            size: 40,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              itemCategorieWidget(
                                title: 'Arcade',
                                icon: Icon(
                                  Icons.videogame_asset,
                                  color: Color(0xFF4E4A85),
                                  size: 100,
                                ),
                              ),
                              itemCategorieWidget(
                                title: 'Puzzle',
                                icon: Icon(
                                  Icons.interests_rounded,
                                  color: Color(0xFF4E4A85),
                                  size: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              itemCategorieWidget(
                                title: 'Fight',
                                icon: Icon(
                                  Icons.gamepad,
                                  color: Color(0xFF4E4A85),
                                  size: 100,
                                ),
                              ),
                              itemCategorieWidget(
                                title: 'RPG',
                                icon: Icon(
                                  Icons.shield,
                                  color: Color(0xFF4E4A85),
                                  size: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              itemCategorieWidget(
                                title: 'Shooter',
                                icon: Icon(
                                  Icons.gps_fixed_rounded,
                                  color: Color(0xFF4E4A85),
                                  size: 100,
                                ),
                              ),
                              itemCategorieWidget(
                                title: 'Strategy',
                                icon: Icon(
                                  Icons.map,
                                  color: Color(0xFF4E4A85),
                                  size: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
                              color: Color(0xFF4E4A85),
                              size: 40,
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
