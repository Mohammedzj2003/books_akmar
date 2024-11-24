import 'package:book_akmar/page/login_page.dart';
import 'package:book_akmar/page/welcome_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../shared/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  height: 150,
                ),

                   Row(
                     children: [
                       Text(
                        AppLocalizations.of(context)!.newAccount,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
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
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: decorationTextFiled.copyWith(
                    hintText: AppLocalizations.of(context)!.enterUserName,
                    prefixIcon: const Icon(Icons.person_rounded),
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: decorationTextFiled.copyWith(
                    hintText: AppLocalizations.of(context)!.enterFirstName,
                    prefixIcon: const Icon(Icons.person_pin_rounded),
                  ),
                ),


                const SizedBox(
                  height: 33,
                ),
          
                //Email
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: decorationTextFiled.copyWith(
                    hintText: AppLocalizations.of(context)!.enterEmail,
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 33),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: decorationTextFiled.copyWith(
                    hintText: AppLocalizations.of(context)!.password,
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                  obscureText: _obscureText,
                ),
                const SizedBox(
                  height: 33,
                ),
          
                //Sign In
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomePage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff283E50),
                      shadowColor: Colors.black,
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20), // الحشوة الداخلية
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
          
                const SizedBox(
                  height: 33,
                ),

                Text.rich(
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  TextSpan(
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!.haveAccount,
                      ),
                      TextSpan(text: ' '),
                      TextSpan(
                          text: AppLocalizations.of(context)!.signIn,
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            })
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
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
