import '/flutter_flow/flutter_flow_util.dart';
import 'games_widget.dart' show GamesWidget;
import 'package:flutter/material.dart';

class GamesModel extends FlutterFlowModel<GamesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
