import 'dart:convert';

class Province {
  int id;
  String name;
  int level;

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
  int id;
  String name;
  int level;
  int provinceId;

  District({required this.id, required this.name, required this.level, required this.provinceId});

  factory District.fromMap(Map<String, dynamic> map) {
    return District(
      id: map['id'],
      name: map['name'],
      level: map['level'],
      provinceId: map['provinceId'],
    );
  }
}

class Ward {
  int id;
  String name;
  int level;
  int districtId;
  int provinceId;

  Ward({required this.id, required this.name, required this.level, required this.districtId, required this.provinceId});

  factory Ward.fromMap(Map<String, dynamic> map) {
    return Ward(
      id: map['id'],
      name: map['name'],
      level: map['level'],
      districtId: map['districtId'],
      provinceId: map['provinceId'],
    );
  }
}
