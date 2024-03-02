import 'package:flutter/material.dart';
import 'package:wiro/main.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  // final size = MediaQuery.of(context).size;
  bool unvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 45),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 40),
                  child: Image.asset(
                    'assets/Logo.png',
                    width: 190,
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Good to see you back!',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Monseratt"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    'assets/mail.png',
                    scale: 1.7,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Image.asset(
                      'assets/checkmark.png',
                      color: Color(0xff6D67A1),
                      width: 20,
                      height: 20,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  // label: Text('Username')
                  hintText: 'e-mail',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'assets/password.png',
                      color: Color(0xff6D67A1),
                      width: 60,
                      height: 20,
                      scale: 1.8,
                    ),
                    suffixIcon: unvisible
                        ? Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Image.asset('assets/unvisible.png',
                                width: 25, height: 25),
                          )
                        : const Padding(
                            padding: EdgeInsets.only(right: 30),
                            child: Icon(Icons.visibility),
                          ),
                    border: const OutlineInputBorder(),
                    // label: Text('Username')
                    hintText: 'password'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  if (true) {
                    Navigator.popAndPushNamed(context, '/Home');
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff4221FE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.32,
                      vertical: 12),
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'don\'t have an account?',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff404040),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Monserate'),
                  ),
                  TextButton(
                      onPressed: () {
                        if (true) {
                          Navigator.popAndPushNamed(context, '/SignUp');
                        }
                      },
                      child: const Text(
                        'Sign Up',
                        style:
                            TextStyle(color: Color(0xff0F0088), fontSize: 16),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key});

  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  bool isNotFilled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 45),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 40),
                  child: Image.asset(
                    'assets/Logo.png',
                    width: 190,
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Create your account!',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Monseratt"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'assets/username.png',
                      width: 60,
                      height: 20,
                      scale: 1.3,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/checkmark.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    // label: Text('Username')
                    hintText: 'username'),
              ),

              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'assets/mail.png',
                      scale: 1.4,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/checkmark.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    // label: Text('Username')
                    hintText: 'e-mail'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'assets/password.png',
                      width: 60,
                      height: 20,
                      scale: 1.3,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Image.asset('assets/unvisible.png',
                          width: 25, height: 25),
                    ),
                    border: const OutlineInputBorder(),
                    // label: Text('Username')
                    hintText: 'password'),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isNotFilled = !isNotFilled;
                        });
                      },
                      icon: isNotFilled
                          ? const Icon(
                              Icons.circle_outlined,
                              color: Color(0xff27E1BC),
                            )
                          : const Icon(Icons.circle, color: Color(0xff27E1BC))),
                  const Text('i agree on'),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'terms of use',
                        style: TextStyle(color: Color(0xff0F0088)),
                      )),
                  const Text('and'),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'privacy policy',
                        style: TextStyle(color: Color(0xff0F0088)),
                      )),
                ],
              ),
              // SizedBox(
              //   height: 20,
              // ),
              TextButton(
                onPressed: () {
                  if (true) {
                    Navigator.popAndPushNamed(context, '/Home');
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff4221FE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.32,
                      vertical: 12),
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'already have an account?',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff404040),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Monserate'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/Login');
                      },
                      child: const Text(
                        'Sign In',
                        style:
                            TextStyle(color: Color(0xff0F0088), fontSize: 16),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
