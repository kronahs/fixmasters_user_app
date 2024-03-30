import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Create Account',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 6),
                Text(
                  'Find services around you',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fullname'),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Fullname...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 20),
                    Text('Email'),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20),
                    Text('Phone number'),
                    SizedBox(height: 10),
                    IntlPhoneField(
                      disableLengthCheck: true,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      initialCountryCode: 'ET',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    SizedBox(height: 20),
                    Text('Password'),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                  ],
                ),

                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign in'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    minimumSize: Size(double.infinity, 0),
                  ),
                ),
                SizedBox(height: 12),

                Center(
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary), // Change color as needed
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
