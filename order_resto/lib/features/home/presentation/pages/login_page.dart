import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/presentation/bloc/app/app_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late AppBloc bloc;
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    bloc = context.read<AppBloc>();
    bloc.add(CheckFromSigninPageEvent(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Login',
              style: textBold.copyWith(fontSize: 16),
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: textBold.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: password,
                  decoration: inputDecoration.copyWith(
                    hintText: 'Masukkan password',
                  ),
                  onChanged: (s) {
                    setState(() {});
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: password.text.isNotEmpty
                      ? () {
                          bloc.add(SignInEvent(password.text, context));
                        }
                      : null,
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
