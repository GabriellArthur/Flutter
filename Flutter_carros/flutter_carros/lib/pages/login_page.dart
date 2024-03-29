import 'package:flutter_carros/pages/home_page.dart';
import 'package:flutter_carros/utils/nav.dart';
import 'package:flutter_carros/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carros/widgets/app_text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _tLogin = TextEditingController(text: "ricardo");

  final _tSenha = TextEditingController(text: "123");

  final _focusSenha = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            AppText(
              "Login",
              "Digite o login",
              controller: _tLogin,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              nextFocus: _focusSenha,
              validator: (String? value) {
                _validateLogin(value!);
              },
              focusNode: _focusSenha,
            ),
            SizedBox(height: 10),
            AppText(
              "Senha",
              "Digite a senha",
              controller: _tSenha,
              password: true,
              validator: (String? value) {
                _validateSenha(value!);
              },
              keyboardType: TextInputType.number,
              focusNode: _focusSenha,
              nextFocus: _focusSenha,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(
              height: 20,
            ),
            AppButton(
              "Login",
              onPressed: _onClickLogin,
            ),
          ],
        ),
      ),
    );
  }

  void _onClickLogin() async {
    String login = _tLogin.text;
    String senha = _tSenha.text;

    print("Login: $login, Senha: $senha");
    push(context, HomePage());
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return "Digite o login";
    }
    return "";
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }
    if (text.length < 3) {
      return "A senha precisa ter pelo menos 3 números";
    }
    return "";
  }

  @override
  void dispose() {
    super.dispose();
  }
}
