class ObjectModel {
  final DateTime time;
  final double open;
  final double high;
  final double low;
  final double close;
  final double priceRange;
  final double priceChangePercent;
  final double volume;

  ObjectModel(this.time, this.open, this.high, this.low, this.close,
      this.priceRange, this.priceChangePercent, this.volume);

  factory ObjectModel.fromJson(Map<String, dynamic> json) {
    return ObjectModel(
      DateTime.parse(json["Date"]),
      json["O"],
      json["H"],
      json["L"],
      json["C"],
      json["CZ"],
      json["CZG"],
      json["TQ"],
    );
  }
}
