// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ui' show hashValues;
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'billing_client_wrapper.dart';
import 'enum_converters.dart';

// WARNING: Changes to `@JsonSerializable` classes need to be reflected in the
// below generated file. Run `flutter packages pub run build_runner watch` to
// rebuild and watch for further changes.
part 'sku_details_wrapper.g.dart';

/// The error message shown when the map represents billing result is invalid from method channel.
///
/// This usually indicates a series underlining code issue in the plugin.
@visibleForTesting
const kInvalidBillingResultErrorMessage =
    'Invalid billing result map from method channel.';

/// Dart wrapper around [`com.android.billingclient.api.SkuDetails`](https://developer.android.com/reference/com/android/billingclient/api/SkuDetails).
///
/// Contains the details of an available product in Google Play Billing.
@JsonSerializable()
@SkuTypeConverter()
class SkuDetailsWrapper {
  /// Creates a [SkuDetailsWrapper] with the given purchase details.
  @visibleForTesting
  SkuDetailsWrapper({
    @required this.description,
    @required this.freeTrialPeriod,
    @required this.introductoryPrice,
    @required this.introductoryPriceMicros,
    @required this.introductoryPriceCycles,
    @required this.introductoryPricePeriod,
    @required this.price,
    @required this.priceAmountMicros,
    @required this.priceCurrencyCode,
    @required this.sku,
    @required this.subscriptionPeriod,
    @required this.title,
    @required this.type,
    @required this.originalPrice,
    @required this.originalPriceAmountMicros,
  });

  /// Constructs an instance of this from a key value map of data.
  ///
  /// The map needs to have named string keys with values matching the names and
  /// types of all of the members on this class.
  @visibleForTesting
  factory SkuDetailsWrapper.fromJson(Map<String, dynamic> map) =>
      _$SkuDetailsWrapperFromJson(map);

  /// Textual description of the product.
  @JsonKey(defaultValue: '')
  final String description;

  /// Trial period in ISO 8601 format.
  @JsonKey(defaultValue: '')
  final String freeTrialPeriod;

  /// Introductory price, only applies to [SkuType.subs]. Formatted ("$0.99").
  @JsonKey(defaultValue: '')
  final String introductoryPrice;

  /// [introductoryPrice] in micro-units 990000
  @JsonKey(defaultValue: '')
  final String introductoryPriceMicros;

  /// The number of subscription billing periods for which the user will be given the introductory price, such as 3.
  /// Returns 0 if the SKU is not a subscription or doesn't have an introductory period.
  @JsonKey(defaultValue: 0)
  final int introductoryPriceCycles;

  /// The billing period of [introductoryPrice], in ISO 8601 format.
  @JsonKey(defaultValue: '')
  final String introductoryPricePeriod;

  /// Formatted with currency symbol ("$0.99").
  @JsonKey(defaultValue: '')
  final String price;

  /// [price] in micro-units ("990000").
  @JsonKey(defaultValue: 0)
  final int priceAmountMicros;

  /// [price] ISO 4217 currency code.
  @JsonKey(defaultValue: '')
  final String priceCurrencyCode;

  /// The product ID in Google Play Console.
  @JsonKey(defaultValue: '')
  final String sku;

  /// Applies to [SkuType.subs], formatted in ISO 8601.
  @JsonKey(defaultValue: '')
  final String subscriptionPeriod;

  /// The product's title.
  @JsonKey(defaultValue: '')
  final String title;

  /// The [SkuType] of the product.
  final SkuType type;

  /// The original price that the user purchased this product for.
  @JsonKey(defaultValue: '')
  final String originalPrice;

  /// [originalPrice] in micro-units ("990000").
  @JsonKey(defaultValue: 0)
  final int originalPriceAmountMicros;

  @override
  bool operator ==(dynamic other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }

    final SkuDetailsWrapper typedOther = other;
    return typedOther is SkuDetailsWrapper &&
        typedOther.description == description &&
        typedOther.freeTrialPeriod == freeTrialPeriod &&
        typedOther.introductoryPrice == introductoryPrice &&
        typedOther.introductoryPriceMicros == introductoryPriceMicros &&
        typedOther.introductoryPriceCycles == introductoryPriceCycles &&
        typedOther.introductoryPricePeriod == introductoryPricePeriod &&
        typedOther.price == price &&
        typedOther.priceAmountMicros == priceAmountMicros &&
        typedOther.sku == sku &&
        typedOther.subscriptionPeriod == subscriptionPeriod &&
        typedOther.title == title &&
        typedOther.type == type &&
        typedOther.originalPrice == originalPrice &&
        typedOther.originalPriceAmountMicros == originalPriceAmountMicros;
  }

  @override
  int get hashCode {
    return hashValues(
        description.hashCode,
        freeTrialPeriod.hashCode,
        introductoryPrice.hashCode,
        introductoryPriceMicros.hashCode,
        introductoryPriceCycles.hashCode,
        introductoryPricePeriod.hashCode,
        price.hashCode,
        priceAmountMicros.hashCode,
        sku.hashCode,
        subscriptionPeriod.hashCode,
        title.hashCode,
        type.hashCode,
        originalPrice,
        originalPriceAmountMicros);
  }
}

/// Translation of [`com.android.billingclient.api.SkuDetailsResponseListener`](https://developer.android.com/reference/com/android/billingclient/api/SkuDetailsResponseListener.html).
///
/// Returned by [BillingClient.querySkuDetails].
@JsonSerializable()
class SkuDetailsResponseWrapper {
  /// Creates a [SkuDetailsResponseWrapper] with the given purchase details.
  @visibleForTesting
  SkuDetailsResponseWrapper(
      {@required this.billingResult, @required this.skuDetailsList});

  /// Constructs an instance of this from a key value map of data.
  ///
  /// The map needs to have named string keys with values matching the names and
  /// types of all of the members on this class.
  factory SkuDetailsResponseWrapper.fromJson(Map<String, dynamic> map) =>
      _$SkuDetailsResponseWrapperFromJson(map);

  /// The final result of the [BillingClient.querySkuDetails] call.
  final BillingResultWrapper billingResult;

  /// A list of [SkuDetailsWrapper] matching the query to [BillingClient.querySkuDetails].
  @JsonKey(defaultValue: <SkuDetailsWrapper>[])
  final List<SkuDetailsWrapper> skuDetailsList;

  @override
  bool operator ==(dynamic other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }

    final SkuDetailsResponseWrapper typedOther = other;
    return typedOther is SkuDetailsResponseWrapper &&
        typedOther.billingResult == billingResult &&
        typedOther.skuDetailsList == skuDetailsList;
  }

  @override
  int get hashCode => hashValues(billingResult, skuDetailsList);
}

/// Params containing the response code and the debug message from the Play Billing API response.
@JsonSerializable()
@BillingResponseConverter()
class BillingResultWrapper {
  /// Constructs the object with [responseCode] and [debugMessage].
  BillingResultWrapper({@required this.responseCode, this.debugMessage});

  /// Constructs an instance of this from a key value map of data.
  ///
  /// The map needs to have named string keys with values matching the names and
  /// types of all of the members on this class.
  factory BillingResultWrapper.fromJson(Map<String, dynamic> map) {
    if (map == null || map.isEmpty) {
      return BillingResultWrapper(
          responseCode: BillingResponse.error,
          debugMessage: kInvalidBillingResultErrorMessage);
    }
    return _$BillingResultWrapperFromJson(map);
  }

  /// Response code returned in the Play Billing API calls.
  final BillingResponse responseCode;

  /// Debug message returned in the Play Billing API calls.
  ///
  /// Defaults to `null`.
  /// This message uses an en-US locale and should not be shown to users.
  final String debugMessage;

  @override
  bool operator ==(dynamic other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }

    final BillingResultWrapper typedOther = other;
    return typedOther is BillingResultWrapper &&
        typedOther.responseCode == responseCode &&
        typedOther.debugMessage == debugMessage;
  }

  @override
  int get hashCode => hashValues(responseCode, debugMessage);
}
