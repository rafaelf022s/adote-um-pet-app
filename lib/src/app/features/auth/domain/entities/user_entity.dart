class UserEntity {
  final String id;
  final String name;
  final String email;
  final String? password;
  final String phone;
  final String zipCode;
  final String address;
  final int numberHouse;
  final String complement;
  final String photoUrl;

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    this.password,
    required this.phone,
    required this.zipCode,
    required this.address,
    required this.numberHouse,
    required this.complement,
    required this.photoUrl,
  });
}