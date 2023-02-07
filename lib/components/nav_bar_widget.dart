import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home/home_widget.dart';
import '../splash/splash_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    Key? key,
    this.home,
    this.list,
    this.find,
    this.account,
  }) : super(key: key);

  final bool? home;
  final bool? list;
  final bool? find;
  final bool? account;

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'stackOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 900.ms,
          begin: Offset(0, 44),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
      ],
    ),
    'stackOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 150.ms),
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 150.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 150.ms,
          duration: 900.ms,
          begin: Offset(0, 44),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
      ],
    ),
    'stackOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 300.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 300.ms,
          duration: 900.ms,
          begin: Offset(0, 44),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
      ],
    ),
    'stackOnPageLoadAnimation4': AnimationInfo(
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
          begin: Offset(0, 44),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 20),
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 88,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: InkWell(
                onTap: () async {
                  if (!widget.home!) {
                    await Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: SplashWidget(),
                      ),
                      (r) => false,
                    );
                  }
                },
                child: Stack(
                  alignment: AlignmentDirectional(0, 0),
                  children: [
                    if (!widget.home!)
                      Icon(
                        FFIcons.khome8,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        size: 42,
                      ),
                    if (widget.home ?? true)
                      Icon(
                        FFIcons.khome8,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 42,
                      ),
                    if (widget.home ?? true)
                      Align(
                        alignment: AlignmentDirectional(0, 0.7),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x8396C3E2),
                                offset: Offset(0, 2),
                              )
                            ],
                            shape: BoxShape.circle,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      ),
                  ],
                ),
              ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation1']!),
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  if (!widget.list!) {
                    await Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: HomeWidget(),
                      ),
                      (r) => false,
                    );
                  }
                },
                child: Stack(
                  alignment: AlignmentDirectional(0, 0),
                  children: [
                    if (!widget.list!)
                      Icon(
                        FFIcons.kwifi1,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        size: 42,
                      ),
                    if (widget.list ?? true)
                      Icon(
                        FFIcons.kwifi1,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 42,
                      ),
                    if (widget.list ?? true)
                      Align(
                        alignment: AlignmentDirectional(0, 0.7),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x8396C3E2),
                                offset: Offset(0, 2),
                              )
                            ],
                            shape: BoxShape.circle,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                  ],
                ),
              ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation2']!),
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  if (!widget.list!) {
                    await Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: SplashWidget(),
                      ),
                      (r) => false,
                    );
                  }
                },
                child: Stack(
                  alignment: AlignmentDirectional(0, 0),
                  children: [
                    if (!widget.find!)
                      Icon(
                        FFIcons.ksteeringWheel,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        size: 42,
                      ),
                    if (widget.find ?? true)
                      Icon(
                        FFIcons.ksteeringWheel,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 42,
                      ),
                    if (widget.find ?? true)
                      Align(
                        alignment: AlignmentDirectional(0, 0.7),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x8396C3E2),
                                offset: Offset(0, 2),
                              )
                            ],
                            shape: BoxShape.circle,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation3']!),
                      ),
                  ],
                ),
              ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation3']!),
            ),
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional(0, 0),
                children: [
                  if (!widget.account!)
                    Icon(
                      FFIcons.kuser5,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 42,
                    ),
                  if (widget.account ?? true)
                    Icon(
                      FFIcons.kuser5,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 42,
                    ),
                  if (widget.account ?? true)
                    Align(
                      alignment: AlignmentDirectional(0, 0.7),
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x8396C3E2),
                              offset: Offset(0, 2),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation4']!),
                    ),
                ],
              ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation4']!),
            ),
          ],
        ),
      ),
    );
  }
}
