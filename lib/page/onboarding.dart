import 'package:book_akmar/page/login_page.dart';
import 'package:book_akmar/shared/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController pageController;
  late OnboardingData controller;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentIndex);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        controller = OnboardingData(context);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ignore: unnecessary_null_comparison
        body: controller == null
            ? Center(child: CircularProgressIndicator())
            : Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount: controller.items.length,
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                    if (kDebugMode) {
                      print(currentIndex);
                    }
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            controller.items[currentIndex].image,
                            height: 300,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              controller.items[currentIndex].title,
                              style: const TextStyle(
                                color: Color(0xff283E50),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            controller.items[currentIndex].description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 67, 101, 129)),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  controller.items.length,
                      (index) => AnimatedContainer(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: currentIndex == index
                            ? const Color(0xff283E50)
                            : Colors.grey,
                      ),
                      height: 7,
                      width: currentIndex == index ? 30 : 7,
                      duration: const Duration(milliseconds: 700))),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width * .9,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff283E50)),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    controller.items.length - 1 > currentIndex
                        ? currentIndex != currentIndex++
                        : Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  });
                },
                child: Text(
                  currentIndex == controller.items.length - 1
                      ? AppLocalizations.of(context)!.getStarted
                      : AppLocalizations.of(context)!.next,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
