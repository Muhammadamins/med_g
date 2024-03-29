// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gap/gap.dart';
// import 'package:med_g/assets/colors.dart';
// import 'package:med_g/assets/icons.dart';
// import 'package:med_g/assets/images.dart';
// import 'package:med_g/features/authentication/sign_in/sign_in_page.dart';
// import 'package:med_g/features/home/home.dart';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     final FirebaseAuth auth = FirebaseAuth.instance;

//     return Scaffold(
//       appBar: AppBar(title: const Text('Sign UP  page'), actions: [
//         IconButton(
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const SignInPage()));
//             },
//             icon: const Icon(Icons.sign_language))
//       ]),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             const Text('Shaxsiy hisobingizga yarating yangi? '),
//             const SizedBox(
//               height: 32,
//             ),
//             TextField(
//               controller: email,
//               decoration: const InputDecoration(
//                   label: Text('Email'), border: OutlineInputBorder()),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextField(
//               controller: password,
//               decoration: const InputDecoration(
//                   label: Text('Password'), border: OutlineInputBorder()),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.large(
//         onPressed: () async {
//           try {
//             UserCredential user = await auth.createUserWithEmailAndPassword(
//                 email: email.text, password: password.text);
//             print(user.user!.email);

//             Navigator.pushAndRemoveUntil(
//                 // ignore: use_build_context_synchronously
//                 context,
//                 MaterialPageRoute(builder: (context) => const HomePage()),
//                 (route) => false);
//           } catch (error) {
//             // ignore: use_build_context_synchronously
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(
//                   error.toString(),
//                 ),
//               ),
//             );
//           }
//         },
//         child: const Icon(Icons.login),
//       ),
//     );
//   }
// }









import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:med_g/assets/icons.dart';
import 'package:med_g/assets/images.dart';
import 'package:med_g/features/authentication/sign_in/sign_in_page.dart';
import 'package:med_g/features/home/home.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;

    return Scaffold(
      appBar: AppBar(
        
        title: Row( 
          children: [

          
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(AppIcons.arrowleft)),
            const Spacer(),
           
            Container(
              height: 200,
              width: 200,
              child: SvgPicture.asset(
                AppImages.about,
                fit: BoxFit.contain,
                // ignore: deprecated_member_use
              ),
            ),
            const Gap(16),
           
        
          ],
        ),
      ),

      
      body: Container(
      padding: EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
        child: Column(
        
          children: [
        
        
        
        Text('Kirish'),
        
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'jaxongirovjasurbek@gmail.com',
                   border: OutlineInputBorder(),
        
              ),
            ),
            const SizedBox(
              height: 20,
            ),
        
             TextField(
              controller: password,
              decoration: const InputDecoration(
        
         labelText: 'Maxfiylik kaliti',
                hintText: 'Maxfiylik kalitini kiriting...',
        
                   border: OutlineInputBorder(),
                   ),
            ),
            const SizedBox(
              height: 20,
            ),
            Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: ()async {

                try {
            UserCredential user = await auth.createUserWithEmailAndPassword(
                email: email.text, password: password.text);
            print(user.user!.email);

            Navigator.pushAndRemoveUntil(
                // ignore: use_build_context_synchronously
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                (route) => false);
          } catch (error) {
            // ignore: use_build_context_synchronously
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  error.toString(),
                ),
              ),
            );
          }
                //  Navigator.push(context,
                //   MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Text('Kirish'),
            ),
        
            Spacer(),
         ElevatedButton(
              onPressed: () {
                 Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  SignInPage()));
              },
              child: Text("Ro'yxatdan o'tish"),
            ),
        
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}