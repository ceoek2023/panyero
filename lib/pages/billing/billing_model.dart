import '/components/main_web_nav/main_web_nav_widget.dart';
import '/components/mobile_nav/mobile_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'billing_widget.dart' show BillingWidget;
import 'package:flutter/material.dart';

class BillingModel extends FlutterFlowModel<BillingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  @override
  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mainWebNavModel.dispose();
    mobileNavModel.dispose();
  }
}
