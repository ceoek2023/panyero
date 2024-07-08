import '/flutter_flow/flutter_flow_util.dart';
import 'vmode_widget.dart' show VmodeWidget;
import 'package:flutter/material.dart';

class VmodeModel extends FlutterFlowModel<VmodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
