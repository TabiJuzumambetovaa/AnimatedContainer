
import 'package:flutter/material.dart';

abstract class AnimatedEvent{}
class ClickEvent extends AnimatedEvent {
  final double randomSize;
  final Color randomColor;

  ClickEvent({
    this.randomSize = 0.0,
    this.randomColor = Colors.transparent,
  });
}
