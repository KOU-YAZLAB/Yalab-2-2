import 'package:flutter/material.dart';
import 'package:flutter_app/data/data.dart';
import 'package:flutter_app/screens/soru_tip_bir.dart';
import 'package:flutter_app/screens/soru_tip_iki.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AnaSayfa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnaSayfaState();
  }
}

class _AnaSayfaState extends State {
  String tipIkiTarihBir = "";
  String tipIkiTarihIki = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.deepPurple,
                  child: ListTile(
                    title: Text(
                      "Tip 1 Sorgular",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.request_page,
                          size: 45, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.tag,
                          color: Colors.purple,
                        ),
                        title: Text("En Fazla Yolcu Ta????nan 5 Gun ve Kapasite"),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right, size: 20),
                            onPressed: () {}),
                        onTap: null,
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.tag,
                          color: Colors.purple,
                        ),
                        title: Text(
                            "Belirli Mesafe Alt??nda En ??ok Seyahat Yap??lan G??n"),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right, size: 20),
                            onPressed: () => _mesafeBelirle(context)),
                        onTap: null,
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.tag,
                          color: Colors.purple,
                        ),
                        title: Text(
                            "En Uzun Mesafeli 5 Yolculuktaki G??n ve Mesafeler"),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right, size: 20),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SorguTipBir()));
                            }),
                        onTap: null,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.deepPurple,
                  child: ListTile(
                    title: Text(
                      "Tip 2 Sorgular",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.request_page,
                          size: 45, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.tag,
                          color: Colors.purple,
                        ),
                        title: Text(
                            "??ki Tarih Aras??nda Belirli Lokasyon Ara?? Say??s??"),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right, size: 20),
                            onPressed: () => _tarihlerArasiSayi(context)),
                        onTap: null,
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.tag,
                          color: Colors.purple,
                        ),
                        title: Text(
                            "??ki Tarih Aras??nda En Az Mesafeli 5 Yolculuk"),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right, size: 20),
                            onPressed: () =>
                                _tarihlerArasiYolculukSayi(context)),
                        onTap: null,
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.tag,
                          color: Colors.purple,
                        ),
                        title: Text(
                            "G??nl??k Seyahat ??cret Ortalamas??na G??re: En Az ??cret Al??nan Tarihler Aras??ndaki Ortalama ??cretler"),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right, size: 20),
                            onPressed: () {}),
                        onTap: null,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.deepPurple,
                  child: ListTile(
                    title: Text(
                      "Tip 3 Sorgular",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.request_page,
                          size: 45, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.tag,
                          color: Colors.purple,
                        ),
                        title: Text("Belirli Bir G??nde En Uzun Seyahat"),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right, size: 20),
                            onPressed: () => _enUzunSeyahatYolu(context)),
                        onTap: null,
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.tag,
                          color: Colors.purple,
                        ),
                        title: Text(
                            "En Az ???? Yolculu Seyahatlerin En Uzun ve En K??sas??"),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right, size: 20),
                            onPressed: () {}),
                        onTap: null,
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.tag,
                          color: Colors.purple,
                        ),
                        title: Text(
                            "Belirli Bir G??nde Ayn?? Konumdan Hareket Eden Ara??lar??n Rastgele 5???inin Yolunu ??izdiri"),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right, size: 20),
                            onPressed: () => _rastgeleBesYolCiz(context)),
                        onTap: null,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }

  _mesafeBelirle(context) {
    Alert(
        context: context,
        style: AlertStyle(
          overlayColor: null,
        ),
        title: "Referans Al??nacak Mesafe",
        desc: "Mesafeyi Tam Say?? Giriniz",
        onWillPopActive: true,
        closeIcon: Icon(Icons.close),
        content: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.title),
                labelText: 'Mesafe',
              ),
              controller: null,
            ),
          ],
        ),
        buttons: [
          DialogButton(
            radius: BorderRadius.circular(10.0),
            onPressed: () {
              //addTodo();
              Navigator.pop(context, true);
            },
            child: Text(
              "TAMAM",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  _tarihlerArasiSayi(context) {
    Alert(
        context: context,
        style: AlertStyle(
          overlayColor: null,
        ),
        title: "Tarih Aral??????n?? Giriniz",
        desc: "Lokasyonu Girin",
        onWillPopActive: true,
        closeIcon: Icon(Icons.close),
        content: Column(
          children: <Widget>[
            TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2020, 1, 1),
                      maxTime: DateTime(2021, 1, 1), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.tr);
                },
                child: Text(
                  '??lk Tarih',
                  style: TextStyle(color: Colors.blue),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2020, 1, 1),
                      maxTime: DateTime(2021, 1, 1), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    setState(() {});
                  }, currentTime: DateTime.now(), locale: LocaleType.tr);
                },
                child: Text(
                  '??kinci Tarih',
                  style: TextStyle(color: Colors.blue),
                )),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.map_outlined),
                labelText: 'Lokasyon',
              ),
              controller: null,
            ),
          ],
        ),
        buttons: [
          DialogButton(
            radius: BorderRadius.circular(10.0),
            onPressed: () {
              //addTodo();
              Navigator.pop(context, true);
            },
            child: Text(
              "TAMAM",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  _tarihlerArasiYolculukSayi(context) {
    Alert(
        context: context,
        style: AlertStyle(
          overlayColor: null,
        ),
        title: "Tarih Aral?????? Giriniz",
        onWillPopActive: true,
        closeIcon: Icon(Icons.close),
        content: Column(
          children: <Widget>[
            TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2020, 1, 1),
                      maxTime: DateTime(2021, 1, 1), onChanged: (date) {
                    //print('change $date');
                  }, onConfirm: (date) {
                    tipIkiTarihBir = date.toString();
                    print(tipIkiTarihBir);
                    //print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.tr);
                },
                child: Text(
                  "??lk Tarih",
                  style: TextStyle(color: Colors.blue),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2020, 1, 1),
                      maxTime: DateTime(2021, 1, 1), onChanged: (date) {
                    //print('change $date');
                  }, onConfirm: (date) {
                    //////////////////buray?? tamamla
                    tipIkiTarihIki = date.toString();
                    print(tipIkiTarihIki);
                  }, currentTime: DateTime.now(), locale: LocaleType.tr);
                },
                child: Text(
                  '??kinci Tarih',
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
        buttons: [
          DialogButton(
            radius: BorderRadius.circular(10.0),
            onPressed: () {
              //TODO D??ZENLEME KISMI

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SoruTipIki(tipIkiTarihBir, tipIkiTarihIki)));
            },
            child: Text(
              "TAMAM",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  _enUzunSeyahatYolu(contet) {
    Alert(
        context: context,
        style: AlertStyle(
          overlayColor: null,
        ),
        title: "En Uzun Seyahet Nereden Nereye",
        onWillPopActive: true,
        closeIcon: Icon(Icons.close),
        content: Column(
          children: <Widget>[
            TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2020, 1, 1),
                      maxTime: DateTime(2021, 1, 1), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.tr);
                },
                child: Text(
                  'Tarih Se??',
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
        buttons: [
          DialogButton(
            radius: BorderRadius.circular(10.0),
            onPressed: () {
              //addTodo();
              Navigator.pop(context, true);
            },
            child: Text(
              "Haritada G??ster",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  _rastgeleBesYolCiz(context) {
    Alert(
        context: context,
        style: AlertStyle(
          overlayColor: null,
        ),
        title: "Tarih Se??iniz",
        desc: "Lokasyonu Girin",
        onWillPopActive: true,
        closeIcon: Icon(Icons.close),
        content: Column(
          children: <Widget>[
            TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2020, 1, 1),
                      maxTime: DateTime(2021, 1, 1), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.tr);
                },
                child: Text(
                  'Tarih Se??imi',
                  style: TextStyle(color: Colors.blue),
                )),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.map_outlined),
                labelText: 'Lokasyon',
              ),
              controller: null,
            ),
          ],
        ),
        buttons: [
          DialogButton(
            radius: BorderRadius.circular(10.0),
            onPressed: () {
              //addTodo();
              Navigator.pop(context, true);
            },
            child: Text(
              "TAMAM",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }
}
