import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../cubits/phone_verfiy/phone_verify_cubit.dart';
import '../../../../../data/models/country_model.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../widgets/global_input.dart';

class CountryPickerAndPhone extends StatelessWidget {
  const CountryPickerAndPhone({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PhoneVerifyCubit>();

    return StreamBuilder<List<PhoneLocaleModel>>(
      stream: cubit.countriesStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }
        final countries = snapshot.data ?? [];
        return Column(
          children: [
            StreamBuilder<PhoneLocaleModel>(
                stream: cubit.countryStream,
                builder: (context, snapshot) {
                  final selectedCountry = snapshot.data;
                  return DropdownButton<PhoneLocaleModel>(
                    value: selectedCountry ?? countries.first,
                    items: countries.map((PhoneLocaleModel country) {
                      return DropdownMenuItem(
                        value: country,
                        alignment: Alignment.center,
                        child: Text(
                          country.name,
                          textAlign: TextAlign.center,
                        ),
                      );
                    }).toList(),
                    onChanged: (c) => cubit.changeCountry(c!),
                    isExpanded: true,
                    alignment: Alignment.center,
                  );
                }),
            12.verticalSpace,
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: StreamBuilder<PhoneLocaleModel>(
                    stream: cubit.countryStream,
                    builder: (context, snapshot) {
                      final selectedCountry = snapshot.data;
                      return SizedBox(
                        height: 56,
                        child: DropdownButton<PhoneLocaleModel>(
                          value: selectedCountry ?? countries.first,
                          items: countries.map((PhoneLocaleModel country) {
                            return DropdownMenuItem(
                              value: country,
                              alignment: Alignment.center,
                              child: Text(
                                country.phoneLocale,
                                textAlign: TextAlign.center,
                              ),
                            );
                          }).toList(),
                          onChanged: (c) => cubit.changeCountry(c!),
                          isExpanded: true,
                          alignment: Alignment.center,
                        ),
                      );
                    },
                  ),
                ),
                12.horizontalSpace,
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 56,
                    child: GlobalInput(
                      controller: cubit.phoneController,
                      hintText: AppTexts.phoneNumber,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
