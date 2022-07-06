// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RichText(
            text: TextSpan(
                text: 'Hai, ',
                style: TextStyle(fontSize: 18),
                children: [
                  TextSpan(
                      text: 'Maulana',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  // margin: EdgeInsets.only(right: 10),
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/logo/qr.png')),
            )
          ],
          elevation: 0,
          backgroundColor: Color(0xFFEC2028),
        ),
        body: Stack(
          children: [
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                height: 250,
                width: Get.width,
                color: Color(0xFFEC2028),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Column(children: [
                      ClipPath(
                        clipper: ClipInfoClass(),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          // height: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE52027),
                                Color(0xFF831217),
                              ],
                            ),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '085348558783',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Image.asset('assets/logo/logo_simpati.png')
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Sisa Pulsa Anda',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Rp100.000',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(0xFFF7B731)),
                                      onPressed: () {},
                                      child: Text(
                                        'Isi Pulsa',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Berlaku sampai ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: '19 April 2023',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Telkomsel POIN',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF7B731),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 8),
                                      child: Text(
                                        '172',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),

                                // sampai sini terakhir
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            StatusCard(
                              title: 'Internet',
                              data: '12.19',
                              satuan: 'GB',
                            ),
                            StatusCard(
                              title: 'Telepon',
                              data: '0',
                              satuan: 'Min',
                            ),
                            StatusCard(
                              title: 'SMS',
                              data: '23',
                              satuan: 'SMS',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ]),
                    Container(
                      height: 7,
                      color: Colors.grey[300],
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.purple,
                        child: Column(children: [
                          //body
                          Expanded(
                              child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Kategori Paket',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: 'Internet',
                                    icon: '1',
                                  ),
                                  ItemKategori(
                                    title: 'Telepon',
                                    icon: '2',
                                  ),
                                  ItemKategori(
                                    title: 'SMS',
                                    icon: '3',
                                  ),
                                  ItemKategori(
                                    title: 'Roaming',
                                    icon: '4',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: 'Hiburan',
                                    icon: '6',
                                  ),
                                  ItemKategori(
                                    title: 'Unggulan',
                                    icon: '5',
                                  ),
                                  ItemKategori(
                                    title: 'Tersimpan',
                                    icon: '7',
                                  ),
                                  ItemKategori(
                                    title: 'Riwayat',
                                    icon: '8',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Terbaru dari telkomsel',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Lihat Semua',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ItemTerbaru(
                                      image: 'g22',
                                    ),
                                    ItemTerbaru(
                                      image: 'g23',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          )),
                          // navbar
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(color: Colors.grey),
                              ),
                            ),
                            margin: EdgeInsets.only(bottom: 10),
                            height: 57,
                            // color: Colors.amber,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  itemNav(
                                    icon: 'home',
                                    status: true,
                                    title: 'Beranda',
                                  ),
                                  itemNav(
                                    icon: 'time',
                                    status: false,
                                    title: 'Riwayat',
                                  ),
                                  itemNav(
                                    icon: 'help',
                                    status: false,
                                    title: 'Bantuan',
                                  ),
                                  itemNav(
                                    icon: 'inbox',
                                    status: false,
                                    title: 'Inbox',
                                  ),
                                  itemNav(
                                    icon: 'profile',
                                    status: false,
                                    title: 'Akun Saya',
                                  ),
                                ]),
                          )
                        ]),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}

class ItemTerbaru extends StatelessWidget {
  const ItemTerbaru({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('assets/logo/${image}.png'),
              fit: BoxFit.cover)),
      width: Get.width * 0.7,
      height: 100,
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 35,
            width: 35,
            // color: Colors.amber,
            child: Image.asset(
              'assets/logo/icon/${icon}.png',
              fit: BoxFit.cover,
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

class itemNav extends StatelessWidget {
  itemNav(
      {Key? key, required this.status, required this.title, required this.icon})
      : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 25,
            child: Image.asset(
              (status == true)
                  ? 'assets/logo/$icon.png'
                  : 'assets/logo/$icon-off.png',
              fit: BoxFit.contain,
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          'Home',
          style: TextStyle(
              color: status == true ? Color(0xFFeC2028) : Color(0xFF747D8C)),
        )
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        // color: Colors.amber,
        width: Get.width * 0.27,
        // height: 70,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          RichText(
            text: TextSpan(
                text: data,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEC2028)),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextSpan(
                    text: ' $satuan',
                    style: TextStyle(fontSize: 16, color: Color(0xFF74706C)
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);

    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
