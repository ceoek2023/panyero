import '/flutter_flow/flutter_flow_util.dart';
import 'horse_race_widget.dart' show HorseRaceWidget;
import 'package:flutter/material.dart';

class HorseRaceModel extends FlutterFlowModel<HorseRaceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
