import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsup_app/cubits/users/users_cubit.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/identification/phone_identification_screen/phone_verify__pinput_screen.dart';
import 'package:newsup_app/presentation/pages/bottom_navigation/navigation_screen.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/models/country_model.dart';
import '../../data/services/local/phone_locale_service.dart';

part 'phone_verify_state.dart';

class PhoneVerifyCubit extends Cubit<PhoneVerifyState> {
  PhoneVerifyCubit() : super(PhoneVerifyInitial());

  final _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController verifyController = TextEditingController();

  PhoneLocaleModel initialCountry =
      PhoneLocaleModel(name: 'Azerbaijan', phoneLocale: '+994', locale: 'AZ');

  late final countriesSubject = BehaviorSubject<List<PhoneLocaleModel>>();
  late final countrySubject = BehaviorSubject<PhoneLocaleModel>();

  Stream<List<PhoneLocaleModel>> get countriesStream => countriesSubject.stream;
  Stream<PhoneLocaleModel> get countryStream => countrySubject.stream;
  String? _verificationId;

  void getCountries() async {
    List<PhoneLocaleModel> countries =
        await PhoneLocaleService.instance.getPhoneLocale();
    countriesSubject.add(countries);
  }

  void changeCountry(PhoneLocaleModel newCountry) {
    countrySubject.add(newCountry);
  }

  Future<void> signWithPhone(BuildContext context) async {
    final phoneNumber = countrySubject.value.phoneLocale + phoneController.text;
    log('Phone: $phoneNumber');
    await _auth.verifyPhoneNumber(
      timeout: const Duration(seconds: 60),
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
        // ignore: use_build_context_synchronously
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (_) => UsersCubit(),
              child: const NavigationScreen(),
            ),
          ),
          (route) => route.isCurrent,
        );
       
      },
      verificationFailed: (FirebaseAuthException e) => log(e.toString()),
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: context.read<PhoneVerifyCubit>(),
              child: const PhoneVerifyPinputScreen(),
            ),
          ),
        );
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<void> verify(context) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: _verificationId!,
      smsCode: verifyController.text,
    );

    await _auth.signInWithCredential(credential).then((userInfo) {
      final User currentUser = userInfo.user!;

      _firestore.collection('users').doc(currentUser.uid).set(
        {
          'id': currentUser.uid,
          'phone': currentUser.phoneNumber,
        },
        SetOptions(merge: true),
      );
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => UsersCubit(),
            child: const NavigationScreen(),
          ),
        ),
        (route) => route.isCurrent,
      );
    });
  }

 

  @override
  Future<void> close() {
    countriesSubject.close();
    countrySubject.close();
    phoneController.dispose();
    return super.close();
  }
}
