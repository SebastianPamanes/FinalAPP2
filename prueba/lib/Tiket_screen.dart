import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flutter_flow/flutter_flow_theme.dart';

class TiketScreenWidget extends StatefulWidget {
  const TiketScreenWidget({Key? key}) : super(key: key);

  @override
  _TiketScreenWidgetState createState() => _TiketScreenWidgetState();
}

class _TiketScreenWidgetState extends State<TiketScreenWidget> {
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}