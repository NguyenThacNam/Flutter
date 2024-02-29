import 'dart:convert';

class Province {
  final String id;
  final String name;
  final int level;

  Province({required this.id, required this.name, required this.level});

  factory Province.fromMap(Map<String, dynamic> map) {
    return Province(
      id: map['id'],
      name: map['name'],
      level: map['level'],
    );
  }
}

class District {
  final String id;
  final String name;
  final int level;
  final String provinceId;

  District(
      {required this.id,
      required this.name,
      required this.level,
      required this.provinceId});

  factory District.fromMap(Map<String, dynamic> map) {
    return District(
      id: map['id'],
      name: map['name'],
      level: map['level'],
      provinceId: map['province_id'],
    );
  }
}

class Ward {
  final String id;
  final String name;
  final int level;
  final String districtId;
  final String provinceId;

  Ward(
      {required this.id,
      required this.name,
      required this.level,
      required this.districtId,
      required this.provinceId});

  factory Ward.fromMap(Map<String, dynamic> map) {
    return Ward(
      id: map['id'],
      name: map['name'],
      level: map['level'],
      districtId: map['district_id'],
      provinceId: map['province_id'],
    );
  }
}
