import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dashboard_ui/ui/screens/dashboard.dart';
import 'package:dashboard_ui/ui/utils/app_color.dart';
import 'package:dashboard_ui/ui/utils/utils.dart';
import 'package:dashboard_ui/ui/widgets/logo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          LogoItem(),
          SizedBox(
            height: 30,
          ),
          Text(
            'Sign In',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Sign in with Open accounts',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width(context) / 2.3,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/google.png',
                    height: 15,
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Theme.of(context).dividerColor,width: 2)),
                  ),
                  label: Text(
                    'Google',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline1!.color,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                width: width(context) / 2.3,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/apple.png',
                    height: 15,
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Theme.of(context).dividerColor,width: 2)),                ),
                  label: Text(
                    'Apple ID',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline1!.color,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(height: 3,decoration: BoxDecoration(color: Theme.of(context).dividerColor),),
          SizedBox(
            height: 30,
          ),
          Text(
            'Or continue with email address',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Theme.of(context).dividerColor,
              hintText: 'Email',
                filled: true,
              hintStyle: TextStyle(fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                  )
              ),
                enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                    )
                ) ,
              prefixIcon: Icon(Icons.mail_outlined)
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Theme.of(context).dividerColor,
                filled: true,
              hintText: 'Password',
              hintStyle: TextStyle(fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  style: BorderStyle.none,
                )
              ),
              enabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                  )
              ) ,
              prefixIcon: Icon(Icons.lock_outlined)
            ),
          ),
          SizedBox(
            height: 20,
          ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard())) ;
            // AdaptiveTheme.of(context).toggleThemeMode();
          },
          child: Container(
            width: width(context),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: dodgerBlue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),
                ),
              ],
            ),
          ),
        ),
          SizedBox(
            height: 20,
          ),
          Text('This site is protected by reCAPTCHA and the Google Privacy Policy.',style: TextStyle(color: greyChateau),),
          SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              text: 'Don’t have an account?  ',
              style: TextStyle(
                color: greyChateau,
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),
              children: [
                TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                    color: Theme.of(context).textTheme.headline1!.color,
                  fontWeight: FontWeight.w700
                ))
              ]
            ),
          )
        ],
      ),
    );
  }
}
