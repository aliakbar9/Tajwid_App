import 'package:flutter/material.dart';
import 'package:tajwid_app/datas/data_tajwid.dart';

class DetailScreen extends StatefulWidget {
  final DataTajwid dataTajwid;

  const DetailScreen({Key key, this.dataTajwid}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  DataTajwid _dataTajwid;
  double _screenWidth;

  @override
  void initState() {
    _dataTajwid = widget.dataTajwid;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _screenWidth = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_dataTajwid.title}'),
        backgroundColor: _dataTajwid.materialColor,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: 'background' + _dataTajwid.title,
              child: Container(
                color: _dataTajwid.materialColor,
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: Hero(
                tag: 'image' + _dataTajwid.title,
                child: Image.network(_dataTajwid.image,
                    height: 230.0, fit: BoxFit.fitWidth),
              ),
            ),
            Positioned(
              top: 250.0,
              left: 16.0,
              width: _screenWidth - 64.0,
              child: Hero(
                tag: 'text' + _dataTajwid.title,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    _dataTajwid.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 16.0,
              top: 288.0,
              width: _screenWidth - 64.0,
              child: Hero(
                tag: 'subtitle' + _dataTajwid.title,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    _dataTajwid.description,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
