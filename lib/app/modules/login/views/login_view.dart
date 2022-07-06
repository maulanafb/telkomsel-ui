import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:telkomsel/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 150,
              child: Image.asset(
                'assets/logo/logo_login.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Silahkan masuk dengan nomor telkomsel kamu',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Nomor HP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              autocorrect: false,
              controller: controller.phoneC,
              decoration: InputDecoration(
                  hintText: 'Cth. 08129011xxxx', border: OutlineInputBorder()),
            ),
            Row(
              children: [
                Obx(() => Checkbox(
                      activeColor: Colors.red,
                      value: controller.checkC.value,
                      onChanged: (value) {
                        controller.checkC.toggle();
                      },
                    )),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: 'Saya menyetujui ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Klik sarat');
                                },
                              text: 'Syarat',
                              style: TextStyle(color: Colors.red),
                              children: [
                                TextSpan(
                                  text: ', ',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print('Klik ketentuan');
                                      },
                                    text: 'ketentuan',
                                    style: TextStyle(color: Colors.red),
                                    children: [
                                      TextSpan(
                                        text: ', ',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print('Klik ketentuan');
                                            },
                                          text: 'dan ',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print('Klik privasi');
                                            },
                                          text: 'privasi\n',
                                          style: TextStyle(color: Colors.red)),
                                      TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print('Klik privasi');
                                            },
                                          text: 'Telkomsel',
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ]),
                              ]),
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(Routes.HOME);
              },
              child: Text(
                'Masuk',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 50), primary: Color(0xFFEC2028)),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text('Atau masuk menggunakan'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo/icon_fb.png'),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Facebook',
                        style: TextStyle(color: Color(0xFF3B5998)),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(150, 50),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(
                        color: Color(0xFF3B5998),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo/icon_twitter.png'),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Twitter',
                        style: TextStyle(color: Color(0xFF1DA1F2)),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(150, 50),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
