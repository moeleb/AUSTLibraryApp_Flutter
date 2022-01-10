class AppUser {
  final String? email;
  final String? phoneNumber;
  final String? displayName;
  final String? address;
  final String uuid;

  AppUser({
    required this.uuid,
    this.email,
    this.phoneNumber,
    this.displayName,
    this.address,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
        email: json['email'],
        uuid: json['uuid'],
        phoneNumber: json['phoneNumber'],
        displayName: json['displayName'],
        address: json['address']);
  }

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "phoneNumber": phoneNumber,
      "displayName": displayName,
      "uuid": uuid,
      "address": address
    };
  }
}
