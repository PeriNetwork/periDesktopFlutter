// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:peri_desktop/api/api_service_peri_user.dart';

class AdmLoginPage extends StatefulWidget {
  const AdmLoginPage({super.key});

  @override
  State<AdmLoginPage> createState() => Adm_LoginPageState();
}

// ignore: camel_case_types
class Adm_LoginPageState extends State<AdmLoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Form(
          key: _formKey,
          child: Align(
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
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, insira um Email de usuário';
                        }
                        _email = emailController.text;
                        return null;
                      },
                      maxLength: 20,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          counterText: "",
                          labelText: "Email:",
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
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, insira uma senha';
                        }
                        _password = passwordController.text;
                        return null;
                      },
                      maxLength: 20,
                      obscureText: true,
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
                      // DOING : BACKEND CADASTRO
                      if (_formKey.currentState!.validate()) {
                        // chame o método login do ApiServicePeriUser e se o código retornado for 200 faça o push para a tela /statistics
                        // caso contrário, mostre um snackbar com a mensagem "Email ou senha incorretos"
                        if (_email.isEmpty || _password.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Email ou senha incorretos'),
                            ),
                          );
                        } else {
                          ApiServicePeriUser.login(_email, _password)
                              .then((value) {
                            if (value == 200) {
                              Navigator.pushNamed(context, '/statistics');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Email ou senha incorretos'),
                                ),
                              );
                            }
                          });
                        }
                      }
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
        ));
  }
}
