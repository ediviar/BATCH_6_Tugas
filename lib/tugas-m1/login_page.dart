import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {

    Widget buildUser(){
      return Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 6,
              color: Colors.grey.shade400,
            ),
          ]
        ),
        child: TextFormField(
          controller: usernameController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.person_2_outlined
            ),
            hintText: 'Masukkan Username...',
          ),
        ),
      );
    }
    Widget buildPass(){
      return Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 6,
              color: Colors.grey.shade400,
            ),
          ]
        ),
        child: TextFormField(
          controller: passwordController,
          obscureText: _isObscure,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.lock_outline_rounded
            ),
            hintText: 'Masukkan Password...',
            suffixIcon: IconButton(
              icon: Icon(
                _isObscure ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 16,
                right: -5,
                child: Image(
                  image: AssetImage('assets/images/multilayer.png'),
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                ),
              ),
              Positioned(
                top: -60,
                left: -140,
                child: Image(
                  image: AssetImage('assets/images/multilayer.png'),
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                  alignment: Alignment.center,
                  height: 400,
                  width: 400,
                ),
              ),
              Positioned(
                top: 250,
                left: 0,
                bottom: 0,
                right: 0,
                child: ShaderMask(
                  shaderCallback: (rectangle){
                    return LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                    ).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height),);
                  },
                  blendMode: BlendMode.dstOut,
                  child: Image(
                    image: AssetImage('assets/images/blue_pattern.png'),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    alignment: Alignment.center,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                )
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
              Positioned(
                top: 360,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 36,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Silahkan masukkan akun Anda.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: Color.fromARGB(255, 141, 141, 141),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 480,),
                    buildUser(),
                    const SizedBox(height: 10,),
                    buildPass(),
                    const SizedBox(height: 20,),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        'Forgot password ?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 2, 145, 248),
                            Color.fromARGB(255, 120, 190, 240),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.login_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(width: 20,),
                          Text(
                            'Log In',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 140,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Tidak punya akun ? ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: const Text(
                            'Sing Up',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 2, 97, 205),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}