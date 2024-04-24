import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  Future<void> signInWithPhone() async {
    await _auth.verifyPhoneNumber(
      timeout: const Duration(seconds: 60),
      phoneNumber: countrySubject.value.phoneLocale + phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async =>
          await _auth.signInWithCredential(credential),
      verificationFailed: (FirebaseAuthException e) {
        log(e.code.toString());
      },
      codeSent: (String verificationId, int? resendToken) {},
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
      //  Navigator.pushAndRemoveUntil(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => BlocProvider(
      //       create: (context) => AboutCubit(),
      //       child: const AboutPage(),
      //     ),
      //   ),
      //   (route) => route.isCurrent,
      // );
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
