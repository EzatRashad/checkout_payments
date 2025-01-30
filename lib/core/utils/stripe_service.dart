import 'dart:developer';

import 'package:checkout_payments/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payments/core/utils/api_keyes.dart';
import 'package:checkout_payments/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../Features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
     var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeyes.secretKey,
      contentType: Headers.formUrlEncodedContentType,
    );
     var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
     return paymentIntentModel;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret,
      merchantDisplayName: "Ezat",
    ));
 
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
     var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
     log( paymentIntentModel.clientSecret??"nullllllllllll");
    await initPaymentSheet(
      paymentIntentClientSecret: paymentIntentModel.clientSecret!,
    );
     await displayPaymentSheet();
  }
}
