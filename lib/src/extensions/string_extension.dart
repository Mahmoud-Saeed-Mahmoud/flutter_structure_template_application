extension StringFormat on String {
  String get firstCapital {
    List<String> values = split('');
    values[0] = values[0].toUpperCase();
    return values.join();
  }
}
