import 'package:flutter/material.dart';

class DataTajwid {
  final String title;
  final String description;
  final String image;
  final MaterialColor materialColor;

  DataTajwid({this.title, this.description, this.image, this.materialColor});

  List<DataTajwid> createDataTajwid() {
    List _dataTajwid = List<DataTajwid>();
    return _dataTajwid
      ..add(DataTajwid(
          title: 'Izhar Halqi',
          description:
              'Izhar secara bahasa artinya jelas dan izhar halqi adalah hukum bacaan apabila nun mati atau tanwin bertemu dgn salah satu huruf izhar halqi. Adapun halqi sendiri berarti tenggorokan, maka cara mengucapkannya harus jelas juga, huruf-huruf tersebut antara lain alif atau hamzah(ء), kha’ (خ), ‘ain (ع), ha’ (ح) , ghain (غ), dan ha’ (ﮬ). Contoh bacaannya adalah  : نَارٌ حَامِيَةٌ',
          image:
              'https://1.bp.blogspot.com/-Ttz0GUySGdU/V2uW0JfUgyI/AAAAAAAABAc/qwMPLGXKMVwdlpivG5U1c87dGfhA3roowCLcB/s1600/New%2BPicture%2B%25281%2529.jpg',
          materialColor: Colors.green))
      ..add(DataTajwid(
          title: 'Idgham Bighunnah',
          description:
              'Idgham Bighunnah artinya melebur disertai dengungan atau yang berarti memasukkan salah satu huruf nun mati atau tanwin kedalam huruf sesudahnya dan lafal dari idgham bigunnah tersebut haruslah mendengung jika bertemu empat huruf berikut yakni : nun (ن), mim (م), wawu (و) dan ya’ (ي). Contoh bacaan idgham bigunnah : مُّمَدَّدَةٍ عَمَدٍ فِيْ',
          image: 'https://i.ytimg.com/vi/lid1aZfyXnY/maxresdefault.jpg',
          materialColor: Colors.green))
      ..add(DataTajwid(
          title: 'Idgham Bilaghunnah',
          description:
              'Idgham Bilaghunnah artinya melebur tanpa dengung atau memasukkan huruf nun mati atau tanwin kedalam huruf sesudahnya tanpa disertai suara mendengung. Hukum bacaan tersebut berlaku jika nun atau tanwin bertemu huruf berikut lam dan ra’. Contoh bacaannya :  لَمْ مَنْ',
          image:
              'https://suhupendidikan.com/wp-content/uploads/2019/03/idgham-bilagunnah.jpg',
          materialColor: Colors.green))
      ..add(DataTajwid(
          title: 'Iqlab',
          description:
              'Iqlab adalah suatu hukum bacaan Al Quran yang terjadi apabila nun mati atau tanwin bertemu dengan satu huruf saja yaitu huruf  ba’ (ب). Di dalam bacaan ini, bacaan nun mati atau tanwin tidak lagi dibaca sebagai nun atau tanwin berubah menjadi bunyi huruf mim (م). Contoh bacaan iqlab : لَيُنۢبَذَنَّ',
          image:
              'https://i.pinimg.com/originals/4c/11/67/4c1167180ab922be77b900b9b9a5e155.png',
          materialColor: Colors.green))
      ..add(DataTajwid(
          title: 'Ikhfa’ haqiqi',
          description:
              'Ikhfa memiliki arti menyamarkan, hukum bacaan ini berlaku apabila huruf nun mati atau tanwin bertemu dgn huruf-huruf ikhfa yakni  ta’(ت), tha’ (ث), jim (ج), dal (د), dzal (ذ), zai (ز), sin (س), syin (ش), sod (ص), dhod (ض), , fa’ (ف), qof (ق), dan huruf  kaf (ك)',
          image:
              'https://nyamankubro.com/wp-content/uploads/2019/09/Contoh-Ikhfa-Haqiqi.jpg',
          materialColor: Colors.green));
  }
}
