import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


import 'package:myapp/AddressInfo_UserInfo .dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddressInfo Tests', () {
    test('AddressInfo fromMap', () {
      Map<String, dynamic> addressMap = {
        'province': {'id': 1, 'name': 'Test Province', 'level': 1},
        'district': {'id': 1, 'name': 'Test District', 'level': 2, 'province': {'id': 1, 'name': 'Test Province', 'level': 1}},
        'ward': {'id': 1, 'name': 'Test Ward', 'level': 3, 'districtId': 1, 'provinceId': 1},
        'street': 'Test Street'
      };

      AddressInfo addressInfo = AddressInfo.fromMap(addressMap);

      expect(addressInfo.province?.id, 1);
      expect(addressInfo.province?.name, 'Test Province');
      expect(addressInfo.province?.level, 1);

      expect(addressInfo.district?.id, 1);
      expect(addressInfo.district?.name, 'Test District');
      expect(addressInfo.district?.level, 2);

      expect(addressInfo.ward?.id, 1);
      expect(addressInfo.ward?.name, 'Test Ward');
      expect(addressInfo.ward?.level, 3);

      expect(addressInfo.street, 'Test Street');
    });
  });

  group('UserInfo Tests', () {
    test('UserInfo fromMap', () {
      Map<String, dynamic> userInfoMap = {
        'name': 'John Doe',
        'email': 'john@example.com',
        'phoneNumber': '123456789',
        'birthDate': '1990-01-01',
        'address': {
          'province': {'id': 1, 'name': 'Test Province', 'level': 1},
          'district': {'id': 1, 'name': 'Test District', 'level': 2, 'province': {'id': 1, 'name': 'Test Province', 'level': 1}},
          'ward': {'id': 1, 'name': 'Test Ward', 'level': 3, 'districtId': 1, 'provinceId': 1},
          'street': 'Test Street'
        }
      };

      UserInfo userInfo = UserInfo.fromMap(userInfoMap);

      expect(userInfo.name, 'John Doe');
      expect(userInfo.email, 'john@example.com');
      expect(userInfo.phoneNumber, '123456789');
      expect(userInfo.birthDate, DateTime(1990, 1, 1));

      expect(userInfo.address?.province?.id, 1);
      expect(userInfo.address?.district?.id, 1);
      expect(userInfo.address?.ward?.id, 1);
      expect(userInfo.address?.street, 'Test Street');
    });
  });
}
