import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number One',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter <= 1) {
        showDialog(
            context: context,
            builder: (_) => new AlertDialog(
                  title: new Text("🚫 แจ้งเตือน 🚫"),
                  content: new Text("กรุณาเลือกอย่างน้อย 1 รายการ"),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('ตกลง'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ));
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("Number ONe"),
      //   leading: InkWell(
      //     onTap: () {},
      //     child: Icon(
      //       Icons.menu,
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Container(
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("lib/Img/bg.jpg"),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.55,
                    decoration: BoxDecoration(),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.10),
                    child: Text(
                      'Number ONe',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.55,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.03,
                    ),
                    child: Image.asset(
                      'lib/Img/item.jpg',
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('เครื่องปั่นน้ำผลไม้ รุ่น SEXA-5846',
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '1,590.00',
                                style: TextStyle(
                                    color: Colors.green[800],
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' บาท',
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 16,
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 40,
                        right: 40,
                      ),
                      child: Divider()),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.01,
                      ),
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.01,
                          left: MediaQuery.of(context).size.width * 0.02,
                          bottom: MediaQuery.of(context).size.width * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'รายละเอียดสินค้า',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '..............................................................................................',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      )),
                  Container(
                      // width: 50,
                      width: MediaQuery.of(context).size.width * 0.45,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.03,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              _decrementCounter();
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Icon(MdiIcons.minus, color: Colors.red),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            child: Container(
                              child: Text(
                                '$_counter',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              _incrementCounter();
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Icon(
                                MdiIcons.plus,
                                color: Colors.green,
                              ),
                            ),
                          )
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.1,
                      ),
                      child: RaisedButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddressWidget()),
                          )
                        },
                        color: Colors.green[800],
                        child: Text(
                          'ยืนยัน',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ],
              ),
            )),
      ),
    );
  }
}

class AddressWidget extends StatefulWidget {
  AddressWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AddressWidgetState createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  int selectedRadio;
  List<bool> _selected = List.generate(20, (i) => false);
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[700],
          title: Text("รายละเอียดการจัดส่ง"),
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
            child: Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
              top: MediaQuery.of(context).size.width * 0.05),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text('เครื่องปั่นน้ำผลไม้ รุ่น SEXA-5846',
                    style: TextStyle(
                        color: Colors.green[800],
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 40,
                    right: 40,
                  ),
                  child: Divider()),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                child: Text(
                  'จัดส่งไปที่',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        // padding: EdgeInsets.only(top: 5, bottom: 5, left: 25),
                        child: Text(
                          'ที่อยู่',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 130,
                        child: Container(
                          // padding: EdgeInsets.only(left: 25),
                          child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.green, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 2.5, color: Colors.green),
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                  isDense: true,
                                  hintText: 'กรุณา กรอกที่อยู่ของคุณ',
                                  hintStyle: TextStyle(fontSize: 10)),
                              style: TextStyle(fontSize: 10)),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        // padding: EdgeInsets.only(top: 5, bottom: 5, left: 25),
                        child: Text(
                          'ตำบล',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 130,
                        child: Container(
                          // padding: EdgeInsets.only(left: 25),
                          child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.green, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 2.5, color: Colors.green),
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                  isDense: true,
                                  hintText: 'กรุณา กรอกตำบลของคุณ',
                                  hintStyle: TextStyle(fontSize: 10)),
                              style: TextStyle(fontSize: 10)),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        // padding: EdgeInsets.only(top: 5, bottom: 5, left: 25),
                        child: Text(
                          'เขต/อำเภอ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 130,
                        child: Container(
                          // padding: EdgeInsets.only(left: 25),
                          child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.green, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 2.5, color: Colors.green),
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                  isDense: true,
                                  hintText: 'กรุณา กรอกเขต/อำเภอของคุณ',
                                  hintStyle: TextStyle(fontSize: 10)),
                              style: TextStyle(fontSize: 10)),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        // padding: EdgeInsets.only(top: 5, bottom: 5, left: 25),
                        child: Text(
                          'จังหวัด',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 130,
                        child: Container(
                          // padding: EdgeInsets.only(left: 25),
                          child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.green, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 2.5, color: Colors.green),
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                  isDense: true,
                                  hintText: 'กรุณา กรอกจังหวัดของคุณ',
                                  hintStyle: TextStyle(fontSize: 10)),
                              style: TextStyle(fontSize: 10)),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    // padding: EdgeInsets.only(top: 5, bottom: 5, left: 25),
                    child: Text(
                      'รหัสไปรษณีย์',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 180,
                    child: Container(
                      // padding: EdgeInsets.only(left: 25),
                      child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.green, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(width: 2.5, color: Colors.green),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              isDense: true,
                              hintText: 'กรุณา กรอกรหัสไปรษณีย์ของคุณ',
                              hintStyle: TextStyle(fontSize: 10)),
                          style: TextStyle(fontSize: 10)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    // padding: EdgeInsets.only(top: 5, bottom: 5, left: 25),
                    child: Text(
                      'เบอร์โทร',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 180,
                    child: Container(
                      // padding: EdgeInsets.only(left: 25),
                      child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.green, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(width: 2.5, color: Colors.green),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              isDense: true,
                              hintText: 'กรุณา กรอกรหัสไปรษณีย์ของคุณ',
                              hintStyle: TextStyle(fontSize: 10)),
                          style: TextStyle(fontSize: 10)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                    child: Text(
                      'สมุดที่อยู่',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      child: Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: selectedRadio,
                        activeColor: Colors.greenAccent[700],
                        onChanged: (val) {
                          print("Radio $val");
                          setSelectedRadio(val);
                        },
                      ),
                      Text(
                        'ที่อยู่...................................',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
                  Container(
                      child: Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: selectedRadio,
                        activeColor: Colors.greenAccent[700],
                        onChanged: (val) {
                          print("Radio $val");
                          setSelectedRadio(val);
                        },
                      ),
                      Text(
                        'ที่อยู่...................................',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.02,
                      ),
                      child: RaisedButton(
                        onPressed: () => {},
                        color: Colors.green[800],
                        child: Text(
                          'ยืนยัน',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}
