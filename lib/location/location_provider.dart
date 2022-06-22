// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pbma11/location/location_service.dart';
import 'dart:developer' as developer;
import 'package:pbma11/location/user_location.dart';


enum LocationProviderStatus {
  Initial,
  Loading,
  Success,
  Error,
}

class LocationProvider with ChangeNotifier {
  late UserLocation userLocation;
  final LocationServices _locationServices = LocationServices();

  LocationProviderStatus _status = LocationProviderStatus.Initial;

  UserLocation get _userLocation => userLocation;

  LocationProviderStatus get status => _status;


  Future<void> getLocation() async {
    try {
      _updateStatus(LocationProviderStatus.Loading);

      userLocation = await _locationServices.getCurrentLocation();
      // print(_userLocation);

      _updateStatus(LocationProviderStatus.Success);
    } catch (e) {
      _updateStatus(LocationProviderStatus.Error);
    }
  }

  void _updateStatus(LocationProviderStatus status) {
    if (_status != status) {
      developer
          .log('LocationProvider: Status updated from: $_status to: $status');
      _status = status;
      notifyListeners();
    }
  }
}