// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AdmLoginPage extends StatefulWidget {
  const AdmLoginPage({super.key});

  @override
  State<AdmLoginPage> createState() => Adm_LoginPageState();
}

// ignore: camel_case_types
class Adm_LoginPageState extends State<AdmLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          Padding(
            padding: EdgeInsets.only(
              top: 0.2 * (MediaQuery.of(context).size.width),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/round_logo_peri.png',
                  width: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Entrar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 0.5 * (MediaQuery.of(context).size.width),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 10),
                child: SizedBox(
                    child: TextFormField(
                  maxLength: 20,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      counterText: "",
                      labelText: "Nome:",
                      labelStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white,
                      )),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      )),
                )),
              ),
            ]),
          ),
          SizedBox(
            width: 0.5 * (MediaQuery.of(context).size.width),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: SizedBox(
                    child: TextFormField(
                  maxLength: 20,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      counterText: "",
                      labelText: "Senha:",
                      labelStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white,
                      )),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      )),
                )),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 0.5 * (MediaQuery.of(context).size.width),
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  // TODO : BACKEND CADASTRO USUÁRIO
                  Navigator.pushNamed(context, '/statistics');
                },
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.login,
                    color: Colors.white,
                  ),
                  Text(
                    "  Entrar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
