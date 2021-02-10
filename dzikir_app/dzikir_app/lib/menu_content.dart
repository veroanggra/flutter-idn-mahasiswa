import 'package:dzikir_app/content_doa.dart';
import 'package:dzikir_app/content_dzikir.dart';
import 'package:dzikir_app/content_nabi.dart';
import 'package:dzikir_app/content_tasbih.dart';
import 'package:dzikir_app/custom_widget.dart';
import 'package:flutter/material.dart';

class ContentMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 18.0, left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Pilih Aktifitas',
                    style: styleTitle, textAlign: TextAlign.left),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            height: 70.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticInOut);
                                  return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return ContentDzikir();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'firstDzikir',
                                  child: Image(
                                    image: AssetImage('assets/img/quran.png'),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'secondDzikir',
                                  child: Image(
                                    image: AssetImage('assets/img/quran.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Dzikir', style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Dzikir Pagi dan Petang',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticInOut);
                                  return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return ContentNabi();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'nabi',
                              child: Image(
                                image: AssetImage('assets/img/buku.png'),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('25 Nabi', style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text('25 Nabi Yang Kita Teladani',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticInOut);
                                  return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return ContentTasbih();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'tasbih',
                              child: Image(
                                image: AssetImage('assets/img/tasbih.png'),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Tasbih', style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Bacaan Tasbih',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticInOut);
                                  return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return ContentDoa();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'doa',
                              child: Image(
                                image: AssetImage('assets/img/masjid.png'),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Kumpulan Doa', style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Kumpulan Doa Sehari - hari',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )


              ],
            ),
          )
        ],
      ),
    );
  }
}
