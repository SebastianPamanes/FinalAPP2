
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart_model.dart';
import 'data_basehelper.dart';
import 'flutter_flow/flutter_flow_theme.dart';

class CatScreenWidget extends StatefulWidget {
  const CatScreenWidget({Key? key}) : super(key: key);

  @override
  _CatScreenWidgetState createState() => _CatScreenWidgetState();
}

class _CatScreenWidgetState extends State<CatScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.shopping_bag_sharp,
                      color: Colors.white,
                      size: 50,
                    ),
                    Text(
                      'cart',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
                Center(
                child: FutureBuilder<List<Cart>>(
                  future: DatabaseHelper.inst.getCarts(),
                  builder: (BuildContext context,
                  AsyncSnapshot<List<Cart>>snapshot
                  ){
                    if(!snapshot.hasData){
                      return Center(
                        child: Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: const Text('Loading...'),
                        ),
                      );
                    }else{
                      return snapshot.data!.isEmpty ?
                      Center(
                        child: Container(
                          child: const Text('No items in the list'),
                        ),
                      )
                      :
                      ListView(scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children:
                        snapshot.data!.map((cart) {
                          return Center(
                            child: ListTile(

                                    title: Row(children: [
                                      Expanded(child: Container(child: Image.file(File(cart.image)), height: 100, width: 100)),
                                      Expanded(child: Container(child: Text('Name: ${cart.name} | price: ${cart.price} | calories: ${cart.calories} | vitamins: ${cart.vitamins} | additives: ${cart.additives}'), width: 275,)),
                                    ],),
                                      
                                      onLongPress: () {
                                        DatabaseHelper.inst.delete(cart.id!);
                                        setState(() {
                                
                                        });
                                      },
                                  )
                          );
                        }).toList()
                      );
                    }
                  }
                  ,
                  ),
              )
                
              ],
            ),
          ),
    );
  }
}