import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 45),
                child: Image.asset(
                  'assets/Logo.png',
                  width: 90,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Good to see you back!',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail_outlined),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Icon(Icons.check_box_outlined),
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
                    prefixIcon: const Icon(Icons.person_4_outlined),
                    suffixIcon: unvisible
                        ? Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Icon(Icons.visibility_off_outlined),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Icon(Icons.visibility),
                          ),
                    border: OutlineInputBorder(),
                    // label: Text('Username')
                    hintText: 'Password'),
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
                  backgroundColor: const Color(0xff27E1BC),
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
                        fontFamily: 'Poppins'),
                  ),
                  TextButton(
                      onPressed: () {},
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
