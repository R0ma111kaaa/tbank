import 'package:flutter/material.dart';

class FadeText extends Text {
  const FadeText(super.data, {super.key, super.style, super.textAlign})
    : super(maxLines: 1, overflow: TextOverflow.fade, softWrap: false);
}
