class CompactTravel {
  CompactTravel(
      {required this.title,
      required this.countryCode,
      required this.startDay,
      required this.endDay,
      required this.budget});

  String title;
  String countryCode;
  DateTime startDay;
  DateTime endDay;
  int budget;
}

class Travel extends CompactTravel {
  Travel(
      {required super.title,
      required super.countryCode,
      required super.startDay,
      required super.endDay,
      required super.budget});

  // TODO: 나머지 필드 구현
}
