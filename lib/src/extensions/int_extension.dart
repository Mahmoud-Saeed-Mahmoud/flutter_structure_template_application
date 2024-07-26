extension IntDuration on int {
  Duration get secondsDuration {
    return Duration(seconds: this);
  }
}

extension IntFormat on int {
  String get cartFormat {
    return (this > 9) ? '9+' : toString();
  }
}
