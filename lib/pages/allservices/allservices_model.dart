import '/components/main_web_nav/main_web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'allservices_widget.dart' show AllservicesWidget;
import 'package:flutter/material.dart';

class AllservicesModel extends FlutterFlowModel<AllservicesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel1;
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel2;

  @override
  void initState(BuildContext context) {
    mainWebNavModel1 = createModel(context, () => MainWebNavModel());
    mainWebNavModel2 = createModel(context, () => MainWebNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mainWebNavModel1.dispose();
    mainWebNavModel2.dispose();
  }
}
