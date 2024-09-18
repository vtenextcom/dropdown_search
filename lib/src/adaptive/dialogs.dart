import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future openMaterialDialog(BuildContext context, Widget content, DialogProps props) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: props.barrierDismissible,
    barrierLabel: props.barrierLabel,
    transitionDuration: props.transitionDuration,
    barrierColor: props.barrierColor ?? Colors.black54,
    useRootNavigator: props.useRootNavigator,
    anchorPoint: props.anchorPoint,
    transitionBuilder: props.transitionBuilder,
    pageBuilder: (context, animation, secondaryAnimation) {
      return AlertDialog(
        key: props.key,
        buttonPadding: props.buttonPadding,
        actionsOverflowButtonSpacing: props.actionsOverflowButtonSpacing,
        insetPadding: props.insetPadding,
        actionsPadding: props.actionsPadding,
        actionsOverflowDirection: props.actionsOverflowDirection,
        actionsOverflowAlignment: props.actionsOverflowAlignment,
        actionsAlignment: props.actionsAlignment,
        actions: props.actions,
        alignment: props.alignment,
        clipBehavior: props.clipBehavior,
        elevation: props.elevation,
        contentPadding: props.contentPadding,
        shape: props.shape,
        backgroundColor: props.backgroundColor,
        semanticLabel: props.semanticLabel,
        shadowColor: props.shadowColor,
        surfaceTintColor: props.surfaceTintColor,
        content: content,
      );
    },
  );
}

Future openAdaptiveDialog(BuildContext context, Widget content, DialogProps props) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: props.barrierDismissible,
    barrierLabel: props.barrierLabel,
    transitionDuration: props.transitionDuration,
    barrierColor: props.barrierColor ?? Colors.black54,
    useRootNavigator: props.useRootNavigator,
    anchorPoint: props.anchorPoint,
    transitionBuilder: props.transitionBuilder,
    pageBuilder: (context, animation, secondaryAnimation) {
      return AlertDialog.adaptive(
        key: props.key,
        buttonPadding: props.buttonPadding,
        actionsOverflowButtonSpacing: props.actionsOverflowButtonSpacing,
        insetPadding: props.insetPadding,
        actionsPadding: props.actionsPadding,
        actionsOverflowDirection: props.actionsOverflowDirection,
        actionsOverflowAlignment: props.actionsOverflowAlignment,
        actionsAlignment: props.actionsAlignment,
        actions: props.actions,
        alignment: props.alignment,
        clipBehavior: props.clipBehavior,
        elevation: props.elevation,
        contentPadding: props.contentPadding,
        shape: props.shape,
        backgroundColor: props.backgroundColor,
        semanticLabel: props.semanticLabel,
        shadowColor: props.shadowColor,
        surfaceTintColor: props.surfaceTintColor,
        content: content,
      );
    },
  );
}

Future openCupertinoDialog(BuildContext context, Widget content, DialogProps props) {
  return showCupertinoDialog(
    context: context,
    barrierDismissible: props.barrierDismissible,
    barrierLabel: props.barrierLabel,
    useRootNavigator: props.useRootNavigator,
    anchorPoint: props.anchorPoint,
    builder: (context) {
      return CupertinoAlertDialog(
        key: props.key,
        actions: props.actions ?? const <Widget>[],
        content: content,
      );
    },
  );
}
