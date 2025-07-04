import 'package:flutter/material.dart';
import 'package:project/cubit/product_state.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showMessegeForUser(
    BuildContext context, productStateFailure state) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(state.error)));
}
