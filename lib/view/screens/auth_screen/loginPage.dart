import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

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
                Text('Login', style: Theme.of(context).textTheme.headline6,),
                SizedBox(height: 6),
                Text('Welcome back', style: Theme.of(context).textTheme.bodyText2,),

                SizedBox(height: 30),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email'),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                      ),
                      keyboardType: TextInputType.emailAddress,
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
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Forgot password?'),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign in'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    minimumSize: Size(double.infinity, 0),
                  ),
                ),

                SizedBox(height: 25),

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Or'),
                    ),
                    Expanded(
                      child: Divider(
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25),

                TextButton(
                  onPressed: () {},
                  child: Text('Sign in with Google'),
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.onBackground.withOpacity(0.1),
                    foregroundColor: Theme.of(context).colorScheme.onBackground,
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    minimumSize: Size(double.infinity, 0),
                  ),
                ),

                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: RichText(
                      text: TextSpan(
                        text: 'Yet to register? ',
                        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Signup',
                            style: TextStyle(color:Theme.of(context).colorScheme.primary), // Change color as needed
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
