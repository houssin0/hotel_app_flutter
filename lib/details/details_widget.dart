import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsWidget extends StatefulWidget {
  const DetailsWidget({
    Key? key,
    this.image,
  }) : super(key: key);

  final String? image;

  @override
  _DetailsWidgetState createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered = false;
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 200.ms,
          duration: 1100.ms,
          begin: Offset(0, -75),
          end: Offset(0, 0),
        ),
      ],
    ),
    'iconButtonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 350.ms),
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 350.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 350.ms,
          duration: 900.ms,
          begin: Offset(-79, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 450.ms),
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 450.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 450.ms,
          duration: 900.ms,
          begin: Offset(-79, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 700.ms,
          begin: Offset(0, 0),
          end: Offset(0, -100),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: false,
      effects: [
        VisibilityEffect(duration: 100.ms),
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 100.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 100.ms,
          duration: 900.ms,
          begin: Offset(0, -60),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    SchedulerBinding.instance.addPostFrameCallback((_) {
      animationsMap['containerOnPageLoadAnimation2']!
          .controller
          .forward(from: 0.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.network(
              widget.image!,
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 350, 0, 0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top rated',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Brazila',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 17,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Text(
                                      'Sapphires Hotel',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Brazila',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 21,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Contrary to popular belief, Lorem Ipsum is not simply a random text, it has roots in a piece of classical latin literature',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Brazila',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            useGoogleFonts: false,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 36, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 125,
                                    height: 125,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Image.asset(
                                        'assets/images/37-lunar-landscape.png',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 125,
                                    height: 125,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 12, 12, 12),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Hotel rent',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Brazila',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 15,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                '\$42',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Brazila',
                                                          fontSize: 28,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Per\nNight',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Brazila',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                          fontSize: 11,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: FaIcon(
                                            FontAwesomeIcons.image,
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            size: 28,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 0),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Icon(
                                            Icons.share_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            size: 28,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: 30,
                            borderWidth: 2,
                            buttonSize: 50,
                            icon: FaIcon(
                              FontAwesomeIcons.longArrowAltLeft,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16,
                            ),
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: HomeWidget(),
                                ),
                              );
                            },
                          ).animateOnPageLoad(
                              animationsMap['iconButtonOnPageLoadAnimation']!),
                        ),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Book',
                            options: FFButtonOptions(
                              width: 130,
                              height: 50,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Brazila',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 19,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['buttonOnPageLoadAnimation']!),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(35, 35, 35, 35),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0x71FFFFFF),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x14000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color(0x50FFFFFF),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://picsum.photos/seed/689/600',
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi Alex',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Brazila',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 17,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'book & and get desicount',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Brazila',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 13,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () async {
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation'] !=
                                null) {
                              setState(() => hasContainerTriggered = true);
                              SchedulerBinding.instance.addPostFrameCallback(
                                  (_) async => await animationsMap[
                                          'containerOnActionTriggerAnimation']!
                                      .controller
                                      .forward(from: 0.0));
                            }
                          },
                          child: Icon(
                            Icons.close_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
                  .animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!)
                  .animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation']!,
                      hasBeenTriggered: hasContainerTriggered),
            ),
          ],
        ),
      ),
    );
  }
}
