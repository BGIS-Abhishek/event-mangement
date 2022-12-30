import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../storage/base_local.dart';
import '../storage/preference_keys.dart';



class BaseNetwork {
  static BaseNetwork _baseNetwork = BaseNetwork._internal();

  BaseNetwork._internal();
  factory BaseNetwork() {
    return _baseNetwork;
  }

  static const String _BASE_URL_Release = "http://43.205.96.228:8000/";
  static const String _BASE_URL_Debug = "http://43.205.96.228:8000/";
  static const String Image_BASE_URL='http://43.205.96.228:8000';
  static const String _BASE_URL = kDebugMode ? _BASE_URL_Debug : _BASE_URL_Release;

  static const String FailedMessage = 'Connection Failed, Please try Again';

  static const String AUTH_Login_URL = "${_BASE_URL}auth/loginapi/";
  static const String Auth_Logout_URL ="${_BASE_URL}auth/logout/";
  static const String Treetype_URL = "${_BASE_URL}auth/gettreetypelist/";
  static const String ViewTreeType_URL ="${_BASE_URL}auth/gettreetypeview/";
  static const String View_Plantation_URL ="${_BASE_URL}auth/getplantationview/";
  static const String View_Geotag_URL ="${_BASE_URL}auth/getgeotagview/";
  static const String View_Monitoring_URL ="${_BASE_URL}auth/GetMonitoringViewByTreeId/";
  static const String Get_Plant_GeoTag_URL ="${_BASE_URL}auth/getplantgeolist/";


  static const String Vendor_Plantation_URL = "${_BASE_URL}vendor/postplantation/";
  static const String Vendor_Maintenance_URL = "${_BASE_URL}vendor/postmaintenance/";
  static const String Vendor_Geotagging_URL  = "${_BASE_URL}vendor/postgeotag/";
  static const String Vendor_Plant_URL = "${_BASE_URL}organisation/getplantationview/";
  static const String Vendor_PlantList_URL = "${_BASE_URL}vendor/getplantationlist/";
  static const String Vendor_Maintenance_History_URL ="${_BASE_URL}vendor/getmaintenancehistorylist/";
  static const String Vendor_GeotagList_URL ="${_BASE_URL}vendor/getgeotaglist/";
  static const String Vendor_FieldWorker_URL ="${_BASE_URL}vendor/getfieldworker/";
  static const String Vendor_ViewGeotag_URL = "${_BASE_URL}vendor/getgeotagview/";
  static const String Vendor_Monitoring_URL = "${_BASE_URL}vendor/postMonitoring/";



  static const String FieldWorker_Plantation_URL = "${_BASE_URL}fieldworker/postplantation/";
  static const String FieldWorker_PlantList_URL = "${_BASE_URL}fieldworker/getplantationlist/";
  static const String FieldWorker_Maintenance_URL = "${_BASE_URL}fieldworker/postmaintenance/";
  static const String FieldWorker_Maintenance_History_URL ="${_BASE_URL}fieldworker/getmaintenancelist/";
  static const String FieldWorker_Geotagging_URL = "${_BASE_URL}fieldworker/postgeotag/";
  static const String FieldWorker_GeotagList_URL ="${_BASE_URL}fieldworker/getgeotaglist/";
  static const String FieldWorker_Cutting_URL = "${_BASE_URL}fieldworker/";


  static const String User_PlantList_URL = "${_BASE_URL}organisation/getplantationlist/";


  static Map<String, String> getFormHeaders() {
    final pref = Preference();
    return {
      'Authorization': 'token ' + pref.getString(Keys.TOKEN),
      'content-type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
    };
  }

  static Map<String, String> getJsonHeaders() {
    return {
      'Authorization': 'token ' + Preference().getString(Keys.TOKEN),
      'content-type': 'application/json',
      'Accept': 'application/json',
    };
  }

  static Map<String, String> getHeaderForLogin() {
    return {"Content-Type": "application/x-www-form-urlencoded", "accept": "application/json"};
  }

  static Map<String, String> getJsonHeaderForLogin() {
    return {"Content-Type": "application/json", "accept": "application/json"};
  }

}