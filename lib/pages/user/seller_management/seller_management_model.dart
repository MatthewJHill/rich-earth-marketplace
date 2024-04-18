import '/components/nav_bar1/nav_bar1_widget.dart';
import '/components/nav_drawer_content/nav_drawer_content_widget.dart';
import '/components/profile_menu/profile_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'seller_management_widget.dart' show SellerManagementWidget;
import 'package:flutter/material.dart';

class SellerManagementModel extends FlutterFlowModel<SellerManagementWidget> {
  ///  Local state fields for this page.

  bool profileMenuOpen = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ProfileMenu component.
  late ProfileMenuModel profileMenuModel;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;
  // Model for NavDrawerContent component.
  late NavDrawerContentModel navDrawerContentModel;

  @override
  void initState(BuildContext context) {
    profileMenuModel = createModel(context, () => ProfileMenuModel());
    navBar1Model = createModel(context, () => NavBar1Model());
    navDrawerContentModel = createModel(context, () => NavDrawerContentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    profileMenuModel.dispose();
    navBar1Model.dispose();
    navDrawerContentModel.dispose();
  }
}
