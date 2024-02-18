import 'package:flutter/material.dart';
import 'package:test/services/Authentication.dart';
import 'package:test/widgets/ESnackbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  // controller
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // form key
  final _loginFormKey = GlobalKey<FormState>();

  // login function
  void _login() async{
    await Authentication()
    .login(emailController.text, passwordController.text)
    .then((value) => {
      if(value == true){
        ESnackbar.showSuccess(context, "Login Successfull!"),
        Navigator.pushNamed(context, "/navbar")
      } else {
        ESnackbar.showError(context, "Login Failed!")
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _loginFormKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
        
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Please enter email';
                  } 
                  return null;
                },
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder()            
                ),
              ),
          
              const SizedBox(height: 10),
          
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Please enter password';
                  } 
                  return null;
                },
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder()            
                ),
              ),
        
              const SizedBox(height: 10),
        
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size.fromHeight(50)
                ),
                onPressed: (){
                  if(_loginFormKey.currentState!.validate()){
                   _login();
                  }
                },
                child: Text('Login'),
              ),

              // Register
              TextButton(onPressed: (){
                Navigator.pushNamed(context, '/register');
              }, child: Text('Create new Account!'))
          
          
            ],
          ),
        ),
      ),
    );
  }
}


// 1. Make a UI for login screen DONE
// 2. Take a email and password from input field DONE 
// 3. Define a service for login
// 4. POST a email and password to firebase server
// 5. Check if email and password is correct
// 6. Return a response (TRUE/FALSE)
// 7. Show a message (if incorrect)
// 8. Navigate to home screen (if correct)