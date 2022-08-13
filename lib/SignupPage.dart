import 'package:flutter/material.dart';
// import 'package:login_ui/Homepage.dart';
import 'package:login_ui/LoginPages.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/signup.webp",
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "SignUp",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email Id",
                    prefixIcon: Icon(Icons.alternate_email),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Mobile", prefixIcon: Icon(Icons.phone)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.blue,
                    height: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Login ",
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
