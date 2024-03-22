import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {
  const MyInput({super.key});

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {

  TextEditingController controladorTexto = TextEditingController();
  TextEditingController controladorTexto2 = TextEditingController();
  String textoDigitado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo entrada de dados"),
      backgroundColor: const Color.fromARGB(255, 7, 205, 255),
      centerTitle: true,
      ),
      body:
        Container(
        padding: EdgeInsets.all(20), 
        child: Column(children: [
        TextField(
         controller: controladorTexto,
         onChanged: (value) {
          print(value);
         },
         decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          filled: true,
          fillColor: Color.fromARGB(255, 192, 192, 192),
          labelText: "Digite um texto",
          prefixIcon: Icon(Icons.auto_awesome_sharp),
          suffixIcon: Icon(Icons.search),
         ),
        ),
        SizedBox(height: 30,),
        ElevatedButton(onPressed: (){
          textoDigitado = "\n" + controladorTexto.text + "\n" + controladorTexto2.text;
          setState(() {
            
          });
        },
        child: Text ("OK")),
        SizedBox(height: 15,),
        Text("Você digitou: " + textoDigitado),
        TextField(
          controller: controladorTexto2,
          onChanged: (value) {
            print(value);
          },
        ),
        ]),)
    );
  }
}