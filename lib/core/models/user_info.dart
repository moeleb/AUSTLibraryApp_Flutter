class UserInfo {
  final String uid;
  final String address;
  final String phoneNumber;

  UserInfo({
    required this.uid,
    required this.address,
    required this.phoneNumber,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json, uid) {
    return UserInfo(
        uid: uid, address: json['address'], phoneNumber: json['phone_number']);
  }
}
