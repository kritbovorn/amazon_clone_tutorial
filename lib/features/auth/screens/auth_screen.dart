import 'package:amazon_clone_tutorial/common/widgets/custom_button.dart';
import 'package:amazon_clone_tutorial/common/widgets/custom_text_field.dart';
import 'package:amazon_clone_tutorial/constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';

  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final GlobalKey<FormState> _signUpFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListTile(
                title: const Text(
                  'Create Account.',
                  style: TextStyle(
                    // color: ,
                    // fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                tileColor: _auth == Auth.signup
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundCOlor,
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signup,
                  groupValue: _auth,
                  onChanged: (Auth? value) {
                    setState(() {
                      _auth = value!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signup)
                Container(
                  padding: const EdgeInsets.all(12),
                  height: size.height * 0.45,
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomTextField(
                            textEditingController: _nameController,
                            hintText: 'Your UserName'),
                        CustomTextField(
                          textEditingController: _emailController,
                          hintText: 'Email address.',
                        ),
                        CustomTextField(
                          textEditingController: _passwordController,
                          hintText: 'Password',
                        ),
                        CustomButton(
                          title: 'Sign Up',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ListTile(
                title: const Text(
                  'Sign In.',
                  style: TextStyle(
                    // color: ,
                    // fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                tileColor: _auth == Auth.signin
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundCOlor,
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signin,
                  groupValue: _auth,
                  onChanged: (Auth? value) {
                    setState(() {
                      _auth = value!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signin)
                Container(
                  padding: const EdgeInsets.all(12),
                  height: size.height * 0.38,
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomTextField(
                          textEditingController: _emailController,
                          hintText: 'Email address.',
                        ),
                        CustomTextField(
                          textEditingController: _passwordController,
                          hintText: 'Password',
                        ),
                        CustomButton(
                          title: 'Sign In',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
