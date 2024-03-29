import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileImage extends StatefulWidget {
  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "F.I.SH",
                  hintText: ' Jasurbek Jakhongirov',
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
            ),
            Gap(20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Full name",
                hintText: 'Hobbilaringizni kiriting....',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            Gap(20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Hudud (ixtiyoriy)",
                hintText: 'Hududni tanlang',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Gap(20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Bo'y uzunligi",
                hintText: 'Bo’y uzunligini kiriting',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your height';
                }
                return null;
              },
            ),
            Gap(20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Vazn og'irligi",
                hintText: 'Vazningizni kiriting',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your weight';
                }
                return null;
              },
            ),
            Gap(20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Tug'ilgan sana ",
                hintText: 'KK/OO/YYYY',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your birth date';
                }
                return null;
              },
            ),
            Gap(20),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Allergiya (ixtiyoriy)",
                  hintText: 'Nimalarga allergiyangiz bor?'),
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Save',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ))
          ],
        ),
      ),
    );
  }
}
