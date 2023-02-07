import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../verify_phone/verify_phone_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneSingInWidget extends StatefulWidget {
  const PhoneSingInWidget({Key? key}) : super(key: key);

  @override
  _PhoneSingInWidgetState createState() => _PhoneSingInWidgetState();
}

class _PhoneSingInWidgetState extends State<PhoneSingInWidget> {
  TextEditingController? inputNormalController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    inputNormalController = TextEditingController();
  }

  @override
  void dispose() {
    inputNormalController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xFF14181B),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    'https://images.unsplash.com/photo-1525824236856-8c0a31dfe3be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2F0ZXJmYWxsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                  ).image,
                ),
              ),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x990F1113),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/image_001.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 310, 0),
                        child: InkWell(
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.chevron_left_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 32,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 40),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Image.asset(
                                'assets/images/logo.png',
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Phone Number',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Brazila',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 70, 0),
                                    child: Text(
                                      'Enter a valid phone number below.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 8, 16, 8),
                                    child: TextFormField(
                                      controller: inputNormalController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Phone Number',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Brazila',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              useGoogleFonts: false,
                                            ),
                                        hintText: '+1 123 456 7890',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Brazila',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              useGoogleFonts: false,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFEEEFEF),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFEEEFEF),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Brazila',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            useGoogleFonts: false,
                                          ),
                                      keyboardType: TextInputType.phone,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    final phoneNumberVal =
                                        inputNormalController!.text;
                                    if (phoneNumberVal == null ||
                                        phoneNumberVal.isEmpty ||
                                        !phoneNumberVal.startsWith('+')) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Phone Number is required and has to start with +.'),
                                        ),
                                      );
                                      return;
                                    }
                                    await beginPhoneAuth(
                                      context: context,
                                      phoneNumber: phoneNumberVal,
                                      onCodeSent: () async {
                                        await Navigator.pushAndRemoveUntil(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child: VerifyPhoneWidget(),
                                          ),
                                          (r) => false,
                                        );
                                      },
                                    );
                                  },
                                  text: 'Send Code',
                                  options: FFButtonOptions(
                                    width: 140,
                                    height: 50,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Brazila',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
