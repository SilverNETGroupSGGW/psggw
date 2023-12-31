import 'dart:math';

import 'package:flutter/material.dart';

extension TimeOfDayExt on TimeOfDay {
  TimeOfDay operator +(Duration other) {
    final int minutes = hour * 60 + this.minute + other.inMinutes;

    final hours = minutes ~/ 60;
    final minute = minutes - hours * 60;
    return TimeOfDay(hour: hours % 24, minute: minute);
  }
}

extension ListExt<T> on List<T> {
  T chooseOne() {
    return this[Random().nextInt(length)];
  }

  List<T> chooseMany(int n) {
    if (n > length) throw "n cannot be grater than the length of the list";

    if (n == length) return this;

    final Random random = Random();
    final List<T> reservoir = List<T>.from(sublist(0, n));

    for (int i = n; i < length; i++) {
      final int randomIndex = random.nextInt(i + 1);

      if (randomIndex < n) {
        reservoir[randomIndex] = this[i];
      }
    }

    return reservoir;
  }
}
