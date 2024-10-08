//  Function that takes a list of doubles in Celsius and converts to Fahrenheit
List<double> convertToF(List<double> temperaturesInC) {
  return (temperaturesInC.map((c) {
    double f = (c * 9 / 5) + 32;
    return (double.parse(f.toStringAsFixed(2)));
  })).toList();
}