import 'package:quitandinha/src/shared/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:quitandinha/src/shared/CustomText.dart';
import 'package:quitandinha/src/Controller/TextFieldController.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const routeName = '/Login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextFieldController textFieldController = TextFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Text("Placeholder"),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 50,
              ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(45))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Email
                    CustomTextField(
                      icon: Icons.email,
                      label: 'Email',
                      isObscure: false,
                      controller: textFieldController.emailController,
                    ),
                    //Senha
                    CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isObscure: true,
                      controller: textFieldController.passwordController,
                    ),
                    //Entrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18))),
                        onPressed: () {
                          String email =
                              textFieldController.getEmailFromTextField();
                          String password =
                              textFieldController.getPasswordFromTextField();
                          Navigator.popAndPushNamed(context, "/HomePage");
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 1,
                            width: 100,
                            color: Colors.grey,
                            margin: const EdgeInsets.symmetric(horizontal: 10)),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'ou',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: AppColors.green),
                          ),
                        ),
                        Container(
                            height: 1,
                            width: 100,
                            color: Colors.grey,
                            margin: const EdgeInsets.symmetric(horizontal: 10)),
                      ],
                    ),

                    ///CadastroButton
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/Registration');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.grey),
                      ),
                      child: Text(
                        "Criar Conta",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/resetPassword');
                        },
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(color: AppColors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
