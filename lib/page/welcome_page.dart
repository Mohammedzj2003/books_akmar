import 'package:book_akmar/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: (){
                        Navigator
                            .pushReplacement(context, MaterialPageRoute(builder: (context)
                        =>
                        const HomePage()
                          ,
                        )
                        );
                      },
                      icon: Icon(Icons.navigate_before_outlined,size: 40,)
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          
                      const SizedBox(
                        height: 120,
                      ),
          
                      Image.asset('images/welcoom.png'),
                      const SizedBox(
                        height: 33,
                      ),
                      Center(
                        child: Text(
                          AppLocalizations.of(context)!.welcome,
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 15,

                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
