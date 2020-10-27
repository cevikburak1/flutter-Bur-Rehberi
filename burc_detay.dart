import 'package:flutter/material.dart';

import 'burc_liste.dart';
import 'models/burc.dart';


class BurcDetay extends StatelessWidget {
  int gelenIndex;
  Burc secilenBurc;
  BurcDetay(this.gelenIndex);
  @override
  Widget build(BuildContext context) {
     secilenBurc=BurcListesi.tumBurclar[gelenIndex];



    return Scaffold(

      body: CustomScrollView(

        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(

              background: Image.asset("images/"+secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
              title: Text(secilenBurc.burcAdi+ " Burcu Ve Özellikleri "),

            centerTitle: true,

            ),

          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(secilenBurc.burcDetay,style: TextStyle(fontSize: 18,color: Colors.white),),
            ),
          )

        ],
      ),




    );

  }


}
