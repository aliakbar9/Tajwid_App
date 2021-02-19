import 'package:flutter/material.dart';
import 'package:tajwid_app/datas/data_tajwid.dart';
import 'package:tajwid_app/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DataTajwid> _dataTajwidList = List<DataTajwid>();
  double _screenWidthAdjustment;

  @override
  void initState() {
    _dataTajwidList = DataTajwid().createDataTajwid();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _screenWidthAdjustment = MediaQuery.of(context).size.width - 48.0 - 64.0;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tajwid App')),
      body: SafeArea(
        child: ListView.builder(
            itemExtent: 190.0,
            itemCount: _dataTajwidList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      fullscreenDialog: true,
                      transitionDuration: Duration(milliseconds: 500),
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return DetailScreen(
                            dataTajwid: DataTajwid(
                                title: _dataTajwidList[index].title,
                                description: _dataTajwidList[index].description,
                                image: _dataTajwidList[index].image,
                                materialColor:
                                    _dataTajwidList[index].materialColor));
                      },
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      }));
                },
                child: Card(
                  margin: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Hero(
                        tag: 'background' + _dataTajwidList[index].title,
                        child: Container(
                          color: _dataTajwidList[index].materialColor,
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Hero(
                          tag: 'image' + _dataTajwidList[index].title,
                          child: Image.network(_dataTajwidList[index].image,
                              height: 80.0, fit: BoxFit.fitWidth),
                        ),
                      ),
                      Positioned(
                        top: 96.0,
                        left: 16.0,
                        width: _screenWidthAdjustment,
                        child: Hero(
                          tag: 'text' + _dataTajwidList[index].title,
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              _dataTajwidList[index].title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16.0,
                        top: 118.0,
                        width: _screenWidthAdjustment,
                        child: Hero(
                          tag: 'subtitle' + _dataTajwidList[index].title,
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              _dataTajwidList[index].description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
