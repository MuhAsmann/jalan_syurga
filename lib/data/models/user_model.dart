import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  final int? id;
  final String? name, username, email, phone, website;
  final AddressModel? address;
  final CompanyModel? company;

  const UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.address,
    required this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object?> get props =>
      [id, name, username, email, phone, website, address, company];
}

@JsonSerializable()
class AddressModel extends Equatable {
  final String? street, suite, city, zipCode;

  const AddressModel({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipCode,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

  @override
  List<Object?> get props => [street, suite, city, zipCode];
}

@JsonSerializable()
class CompanyModel extends Equatable {
  final String? name, catchPhrase;

  const CompanyModel({
    required this.catchPhrase,
    required this.name,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
  @override
  List<Object?> get props => [catchPhrase, name];
}
