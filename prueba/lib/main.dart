
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Cat_screen.dart';
import 'Contact_screen.dart';
import 'Producr_screen.dart';
import 'Tiket_screen.dart';
import 'camara.dart';
import 'cart_model.dart';
import 'data_basehelper.dart';
import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_widgets.dart';
import 'zone_militar.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  final camaras = await availableCameras();
  

  final first = camaras.first;

  runApp(MaterialApp(initialRoute: '/',routes: {
  '/':((context) => HomePage(firstcamera: first))
  }));
}


class HomePage extends StatelessWidget {
  final CameraDescription firstcamera;

   HomePage({
    Key? key, required this.firstcamera
  }):super(key:key ); 
  String imagen = '';
  String na = '';
  String re = '';
  String ca = '';
  String vit = '';
  String adi = '';
  double? ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
                child: Image.network(
                  'https://assets.puzzlefactory.com/puzzle/369/033/original.webp',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Text(
                'Choose an option',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: FFButtonWidget(
                onPressed: ()  {
                  Navigator.push(context,MaterialPageRoute(builder: ((context) => CatScreenWidget() )));
                },
                text: 'Cat Food',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: Color(0xFFEDB027),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  //borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: FFButtonWidget(
                onPressed: ()  {
                  Navigator.push(context,MaterialPageRoute(builder: ((context) => MyApp() )));
                },
                text: 'Contacts',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: Color(0xFFEDB027),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  //borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: FFButtonWidget(
                onPressed: () {
                   Navigator.push(context,MaterialPageRoute(builder: ((context) => ZoneMilitarWidget() )));;
                },
                text: 'Zone militar',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: Color(0xFFEDB027),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  //borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: FFButtonWidget(
                onPressed: ()  {
                   Navigator.push(context,MaterialPageRoute(builder: ((context) => TiketScreenWidget() )));;
                },
                text: 'Tikets',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: Color(0xFFEDB027),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  //borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
        automaticallyImplyLeading: true,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            child: Icon(
              Icons.shopping_bag_sharp,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 35, 0, 0),
                child: Text(
                  'what would you like to wear today?',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                      child: Image.network(
                        'https://picsum.photos/seed/646/600',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                      child: Image.network(
                        'https://picsum.photos/seed/287/600',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                      child: Container(
                        width: 290,
                        height: 290,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            RatingBar.builder(
                              onRatingUpdate: (newValue) =>
                                   ratingBarValue = newValue,
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                              ),
                              direction: Axis.horizontal,
                              initialRating: ratingBarValue ??= 3,
                              unratedColor: Color(0xFF9E9E9E),
                              itemCount: 5,
                              itemSize: 2,
                              glowColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                            ),
                            
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      80, 0, 0, 0),
                                  child: Text(
                                    'Your product',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(100, 0, 10, 0),
                              child: FFButtonWidget(
                                onPressed: ()  {
                                  Navigator.push(context,MaterialPageRoute(builder: ((context) => ProducrScreenWidget(camera: firstcamera, adi1: adi, call1: ca , im1: imagen, na1: na, pre1: re, viti1: vit,) )));;
                                },
                                text: 'Add to car',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: Color(0xFFEDB027),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  //borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: Center(
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
                      ListView(scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children:
                        snapshot.data!.map((cart) {
                          return Center(
                            child: GestureDetector(
                              child: Container(
                                      child:
                                        Container(child: Image.file(File(cart.image)), height: 100, width: 100,),
                                        
                                      
                                    ),
                                    onLongPress: () {
                                        
                                        imagen = cart.image;
                                        na = cart.name;
                                        re = cart.price;
                                        ca = cart.calories;
                                        vit = cart.vitamins;
                                        adi = cart.additives;
                                        
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
                ),
              ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.add,

                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 30,
                          ),
                          onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>TakePictureScreen(camera: firstcamera)));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}