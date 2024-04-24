class PhoneLocaleModel {
  final String name;
  final String phoneLocale;
  final String locale;

  PhoneLocaleModel({
    required this.name,
    required this.phoneLocale,
    required this.locale,
  });

  factory PhoneLocaleModel.fromJson(Map<String, dynamic> json) =>
      PhoneLocaleModel(
        name: json["name"],
        phoneLocale: json["phone_locale"],
        locale: json["locale"],
      );
}
