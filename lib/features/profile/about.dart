import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_g/assets/images.dart';

class AboutMedG extends StatefulWidget {
  const AboutMedG({super.key});

  @override
  State<AboutMedG> createState() => _AboutMedGState();
}

class _AboutMedGState extends State<AboutMedG> {


  @override
  Widget build(BuildContext context) {
   


   return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
          
            expandedHeight: 160.0,
            flexibleSpace:  FlexibleSpaceBar(

              title: Text('MedG haqida',style: TextStyle(color: Colors.grey),),
                          background: Image.asset('assets/images/about.png',fit: BoxFit.cover,),

            ),
          ),
           SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text(''),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: Colors.white,
                  height: 1300,
                  child: Center(
                    child:
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(""" 
MedG HAQIDA
Umumiy/ 12.04.2022y
                        
Tadqiqotlarga ko‘ra, XIX asrning ikkinchi yarmi va XX asr boshlarida ma'rifatparvar
 ajdodlarimiz yaratgan pedagogik asarlarning aksariyatida bolani jismoniy 
  jihatdan sog‘lom etib tarbiyalashga alohida e'tibor qaratilgan.             
                        
JAMOAMIZ HAQIDA    
                        
Jumladan, bu borada Abdurauf Fitratning ijtimoiy tarbiya negizida jismoniy tarbiyani tashkil etish, shaxsni salomat va baquvvat etib tarbiyalash masalalariga oid qarashlari diqqatga molikdir. Uning «Rahbari najot» asarining «Bola tarbiyasi» nomli bobida shunday deyiladi: «Badan tarbiyasiga qadim zamonlardan boshlab katta ahamiyat berilgan. Insonning butun a'zosi salomat va quvvatga ega bo‘lmasa, unda inson uzoq yashamaydi. Agar insonning tanasidagi a'zolaridan biriga xalal tegsa,
 u kishi ishdan qo‘lini tortib, boshqalarning muhtojiga aylanadi».
                        
 FAQ  
                        
                        """,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,overflow:  TextOverflow.visible),),
                        ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    
    );
  }
}


