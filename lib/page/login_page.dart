import 'package:book_akmar/page/Forget%20Password/forgetPass_Page.dart';
import 'package:book_akmar/page/register_page.dart';
import 'package:book_akmar/page/welcome_page.dart';
import 'package:flutter/material.dart';
import '../shared/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                   Row(
                     children: [
                       Text(
                        AppLocalizations.of(context)!.welcomeBack,
                        textDirection: TextDirection.ltr,
                        style: const TextStyle(
                          color: Color(0xff283E50),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                                         ),
                       SizedBox(
                         width: 20,
                       ),
                     ],
                   ),

                const SizedBox(
                  height: 33,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: decorationTextFiled.copyWith(
                    labelText: AppLocalizations.of(context)!.enterEmail,
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 33),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: decorationTextFiled.copyWith(
                    labelText: AppLocalizations.of(context)!.password,
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                  obscureText: _obscureText,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator
                            .pushReplacement(context, MaterialPageRoute(builder: (context)
                        =>
                        const ForgetPassPage()
                        ,
                        )
                        );
                      },
                      child:  Text(
                        AppLocalizations.of(context)!.forgetPassword,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      )),
                ),

                const SizedBox(
                  height: 33,
                ),
                //ButtonSign In
                SizedBox(
                  width: double.infinity,
                  child: GestureDetector(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator
                            .pushReplacement(context, MaterialPageRoute(builder: (context)
                        =>
                        const WelcomePage()
                        ,
                        )
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff283E50),
                        shadowColor: Colors.black,
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                      ),
                      child:  Text(
                        AppLocalizations.of(context)!.next,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //have account
                     Text(AppLocalizations.of(context)!.haveNotAccount,
                        style: TextStyle(fontSize: 10, color: Color(0xff283E50))),
                    //Sign Up
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child:  Text(
                        AppLocalizations.of(context)!.signUp,                        style: TextStyle(color: Colors.blue, fontSize: 10),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomePage()));
                  },
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomePage()));
                    } ,
                    child:  Text(AppLocalizations.of(context)!.guest,
                    style: TextStyle(color: Colors.blue, fontSize: 15),),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('icons/facebook.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('icons/twitter.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('icons/google.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}