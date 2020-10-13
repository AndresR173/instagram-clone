import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class UserDto {
  Login login;
  Picture picture;
}

@JsonSerializable()
class Login {
  @JsonKey(name: 'username')
  String userName;
}

@JsonSerializable()
class Picture {
  @JsonKey(name: 'thumbnail')
  String thumbnail;
}
