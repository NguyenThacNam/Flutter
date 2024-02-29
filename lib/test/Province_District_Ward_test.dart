import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


import 'package:myapp/Province_District_Ward.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Province Tests', () {
    test('Province fromMap', () {
      Map<String, dynamic> provinceMap = {'id': 1, 'name': 'Test Province', 'level': 1};
      Province province = Province.fromMap(provinceMap);

      expect(province.id, 1);
      expect(province.name, 'Test Province');
      expect(province.level, 1);
    });
  });

  group('District Tests', () {
    test('District fromMap', () {
      Map<String, dynamic> districtMap = {'id': 1, 'name': 'Test District', 'level': 2, 'provinceId': 1};
      District district = District.fromMap(districtMap);

      expect(district.id, 1);
      expect(district.name, 'Test District');
      expect(district.level, 2);
      expect(district.provinceId, 1);
    });
  });

  group('Ward Tests', () {
    test('Ward fromMap', () {
      Map<String, dynamic> wardMap = {'id': 1, 'name': 'Test Ward', 'level': 3, 'districtId': 1, 'provinceId': 1};
      Ward ward = Ward.fromMap(wardMap);

      expect(ward.id, 1);
      expect(ward.name, 'Test Ward');
      expect(ward.level, 3);
      expect(ward.districtId, 1);
      expect(ward.provinceId, 1);
    });
  });
}