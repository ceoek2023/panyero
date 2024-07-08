import '/components/alt_nav_2/alt_nav2_widget.dart';
import '/components/mobile_nav/mobile_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'team_members_clients_widget.dart' show TeamMembersClientsWidget;
import 'package:flutter/material.dart';

class TeamMembersClientsModel
    extends FlutterFlowModel<TeamMembersClientsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for altNav_2 component.
  late AltNav2Model altNav2Model;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  @override
  void initState(BuildContext context) {
    altNav2Model = createModel(context, () => AltNav2Model());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    altNav2Model.dispose();
    mobileNavModel.dispose();
  }
}
