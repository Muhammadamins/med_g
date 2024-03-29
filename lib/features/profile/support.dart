import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {








   return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
          
            expandedHeight: 160.0,
            flexibleSpace:  FlexibleSpaceBar(

                          background: Image.asset('assets/images/services.png',fit: BoxFit.cover,),

            ),
          ),
           SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
              child: Text(''),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Qo’llab quvvatlash markazi',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,overflow:  TextOverflow.visible),),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    
    );


  }
}
