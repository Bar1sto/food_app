import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text(
              "Регистрация",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 15),
            // Email
            MyTextFielder(
              controller: emailController,
              hintText: "Почта",
              obscureText: false,
            ),
            const SizedBox(height: 15),
            // Password
            MyTextFielder(
              controller: passwordController,
              hintText: "Пароль",
              obscureText: true,
            ),
            const SizedBox(height: 15),
            // confirmPassword
            MyTextFielder(
              controller: confirmPasswordController,
              hintText: "Повтор пароля",
              obscureText: true,
            ),
            const SizedBox(height: 15),
            // Buttun
            MyButton(onTap: () {}, text: "Зарегистрироваться"),
            const SizedBox(height: 15),

            // Уже есть аккаунт? Войти
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Уже есть аккаунт?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(height: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(" Войти",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
