import 'package:auth_screen/constants.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("SIGN IN", style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                              color: Colors.white,
                    ),
                    ),
                    Text("SIGN UP", style: Theme.of(context).textTheme.button?.copyWith(
                      color: const Color.fromARGB(255, 229, 156, 48),
                    ),)
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(Icons.alternate_email,color: kPrimaryColor),
                      ),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email Address"
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Icon(Icons.lock,color: kPrimaryColor),
                    ),
                    Expanded(child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white.withOpacity(.5)),
                        ),
                        child: Icon(Icons.android, color: Colors.white.withOpacity(.5),
                        ),
                      ),
                      const SizedBox(width: 20.0,),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white.withOpacity(.5)),
                        ),
                        child: Icon(Icons.chat, color: Colors.white.withOpacity(.5),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor,
                        ),
                        child: const Icon(Icons.arrow_forward, color: Colors.black,),
                      ),
                    ],
                  ),
                ),
              ],
                      ),
            ))
        ],
      ),
    );
  }
}
