import 'package:flutter/cupertino.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String? errorMessage;

  void handleSignIn() {
    final email = emailController.text.trim();
    final password = passwordController.text;

    setState(() {
      if (email.isEmpty || password.isEmpty) {
        errorMessage = 'Please enter your email and password.';
      } else if (!email.contains('@')) {
        errorMessage = 'Please enter a valid email address.';
      } else {
        errorMessage = null;
      }
    });

    if (errorMessage == null) {
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFF141414),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              const Text(
                'NETFLIX',
                style: TextStyle(
                  color: Color(0xFFE50914),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 60),

              const Text(
                'Sign In',
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              CupertinoTextField(
                placeholder: 'Email or mobile number',
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                padding: const EdgeInsets.all(16),
                autocorrect: false,
                textCapitalization: TextCapitalization.none,
                style: const TextStyle(color: CupertinoColors.white),
                placeholderStyle: const TextStyle(
                  color: CupertinoColors.systemGrey,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF292929),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              const SizedBox(height: 16),

              CupertinoTextField(
                placeholder: 'Password',
                obscureText: !isPasswordVisible,
                padding: const EdgeInsets.all(16),
                controller: passwordController,
                style: const TextStyle(color: CupertinoColors.white),
                placeholderStyle: const TextStyle(
                  color: CupertinoColors.systemGrey,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF292929),
                  borderRadius: BorderRadius.circular(8),
                ),
                suffix: CupertinoButton(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  child: Icon(
                    isPasswordVisible
                        ? CupertinoIcons.eye_slash
                        : CupertinoIcons.eye,
                    color: CupertinoColors.systemGrey,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(height: 18),

              const SizedBox(height: 12),

              if (errorMessage != null)
                Text(
                  errorMessage!,
                  style: const TextStyle(
                    color: Color(0xFFFF6B6B),
                    fontSize: 13,
                  ),
                ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  color: const Color(0xFFE50914),
                  onPressed: handleSignIn,
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const Center(
                child: Text(
                  'OR',
                  style: TextStyle(color: CupertinoColors.systemGrey),
                ),
              ),

              const SizedBox(height: 18),

              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  color: const Color(0xFF333333),
                  onPressed: () {},
                  child: const Text(
                    'Use a Sign-In Code',
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
              ),

              const Spacer(),

              const Center(
                child: Text(
                  'New to Netflix? Sign up now.',
                  style: TextStyle(color: CupertinoColors.white, fontSize: 14),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
