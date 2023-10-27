//Application Name: ViGeNesia-Visi Generasi Indonesia
//Versi : Beta
//Programmer : Sriyadi
//Mata Kuliah : Teknologi Web Service
//Kampus : UBSI Cengkareng
//Page: Program utama (Register.dart)

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '/../Screen/Login.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // penambahan variabel controller form builder
  TextEditingController nameController = TextEditingController();

  // penambahan variabel editing controller profesi
  TextEditingController profesiController = TextEditingController();

  // penambahan variabel editing controller email
  TextEditingController emailController = TextEditingController();

  // penambahan variabel edting controller password
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //return Container();

    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.home),
        title: Text(' page Register'),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Register Your Account",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),

                    // awal widget text editting Nama
                    SizedBox(height: 50),
                    FormBuilderTextField(
                      name: "name",
                      controller: nameController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(),
                          labelText: "Nama"),
                    ), //akhir textediting Nama

                    // awal widget text editting Profesi
                    SizedBox(height: 20),
                    FormBuilderTextField(
                      name: "profesi",
                      controller: profesiController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(),
                          labelText: "Profesi"),
                    ), //akhir textediting Profesi

                    // awal widget text editting Email
                    SizedBox(height: 20),
                    FormBuilderTextField(
                      name: "email",
                      controller: emailController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(),
                          labelText: "Email"),
                    ), //akhir textedting Email

                    // awal widget text editting Password
                    SizedBox(
                      height: 20,
                    ),
                    FormBuilderTextField(
                      obscureText:
                          true, // <-- Buat bikin setiap inputan jadi bintang " * "
                      name: "password",
                      controller: passwordController,

                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(),
                          labelText: "Password"),
                    ), // akhir textediting password

                    // awal widget/navigasi daftar
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () {
                            // pindah ke halaman/page login
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text("Daftar")),
                    ), //akhir widget/navigasi daftar
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}