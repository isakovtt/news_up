import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:newsup_app/data/models/country_model.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

class PhoneLocaleService {
  static PhoneLocaleService? _instance;
  PhoneLocaleService._();

  static PhoneLocaleService get instance =>
      _instance ??= PhoneLocaleService._();

  List<PhoneLocaleModel>? _phoneLocales;

  Future<List<PhoneLocaleModel>> getPhoneLocale() async {
    try {
      final response = await rootBundle.loadString(AppAssets.phoneLocales);
      final List data = jsonDecode(response);
      _phoneLocales = data.map((e) => PhoneLocaleModel.fromJson(e)).toList();
    } catch (_) {
      _phoneLocales = [];
    }

    return _phoneLocales!;
  }
}
