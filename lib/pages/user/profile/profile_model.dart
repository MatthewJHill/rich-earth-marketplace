import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/nav_bar1/nav_bar1_widget.dart';
import '/components/nav_drawer_content/nav_drawer_content_widget.dart';
import '/components/profile_menu/profile_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  bool profileMenuOpen = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  bool requestCompleted2 = false;
  String? requestLastUniqueKey2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool requestCompleted1 = false;
  String? requestLastUniqueKey1;
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // Stores action output result for [Backend Call - API (Create User Address)] action in Button widget.
  ApiCallResponse? createUserAddressResponse;
  // Model for ProfileMenu component.
  late ProfileMenuModel profileMenuModel;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;
  // Model for NavDrawerContent component.
  late NavDrawerContentModel navDrawerContentModel;

  /// Query cache managers for this widget.

  final _userAddressesManager = FutureRequestManager<List<UserAddressRow>>();
  Future<List<UserAddressRow>> userAddresses({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UserAddressRow>> Function() requestFn,
  }) =>
      _userAddressesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserAddressesCache() => _userAddressesManager.clear();
  void clearUserAddressesCacheKey(String? uniqueKey) =>
      _userAddressesManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    profileMenuModel = createModel(context, () => ProfileMenuModel());
    navBar1Model = createModel(context, () => NavBar1Model());
    navDrawerContentModel = createModel(context, () => NavDrawerContentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    profileMenuModel.dispose();
    navBar1Model.dispose();
    navDrawerContentModel.dispose();

    /// Dispose query cache managers for this widget.

    clearUserAddressesCache();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted2;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted1;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
