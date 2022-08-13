import 'package:flutter/material.dart';
import 'package:login_ui/SignupPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/login.webp",
                height: 300,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email ID",
                      prefixIcon: Icon(Icons.alternate_email)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock_person_sharp),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 250),
                child: Text(
                  "forgot password?",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: MaterialButton(
                    height: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        // indent: MediaQuery.of(context).size.width * 0.1,
                        endIndent: 15,
                        color: Colors.black,
                      ),
                    ),
                    Text("or"),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        indent: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: MaterialButton(
                    height: 40,
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.facebook),
                        SizedBox(
                          width: 40,
                        ),
                        Text("Login with facebook"),
                      ],
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?"),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignupPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
